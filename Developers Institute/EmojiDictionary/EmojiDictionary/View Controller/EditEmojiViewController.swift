//
//  EditEmojiViewController.swift
//  EmojiDictionary
//
//  Created by Gabriel Drai on 29/11/2017.
//  Copyright © 2017 Gabriel Drai. All rights reserved.
//

import UIKit

protocol EditEmojiDelegate : NSObjectProtocol // MUST inherit from NSObjectProtocol
{
    func editEmoji(emoji: Emoji)
}

class EditEmojiViewController: FormEmojiViewController {
    
    weak var delegate : EditEmojiDelegate?
    
    var emoji : Emoji?
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
        self.textFieldEmoji.text = self.emoji?.symbol
        self.textFieldUsage.text = self.emoji?.usage
        self.textFieldDescription.text = self.emoji?.description
    }
    
    @IBAction override func save(_ sender: Any?)
    {
        
        if let emojiCharacter : String = self.textFieldEmoji.text
        {
            if let usage : String = self.textFieldUsage.text
            {
                if let emojiDescription : String = self.textFieldDescription.text
                {
                    let emoji = Emoji(symbol: emojiCharacter, name: "", emojiDescription: emojiDescription, usage: usage)
                    
                    self.delegate?.editEmoji(emoji: emoji)
                    
                    self.dismiss(animated: true) {
                        
                    }
                }
            }
        }
    }
    
}

