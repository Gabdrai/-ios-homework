//
//  AddEmojiViewController.swift
//  EmojiDictionary
//
//  Created by Gabriel Drai on 29/11/2017.
//  Copyright © 2017 Gabriel Drai. All rights reserved.
//

import UIKit

protocol AddEmojiDelegate : NSObjectProtocol // MUST inherit from NSObjectProtocol
{
    func addEmoji(emoji: Emoji)
}

class AddEmojiViewController: FormEmojiViewController
{
    weak var delegate : AddEmojiDelegate?
    
    @IBAction override func save(_ sender: Any?)
    {
        if let emojiCharacter : String = self.textFieldEmoji.text
        {
            if let usage : String = self.textFieldUsage.text
            {
                if let description : String = self.textFieldDescription.text
                {
                    let emoji = Emoji(symbol: emojiCharacter, name: "", emojiDescription: description, usage: usage)
                    
                    self.delegate?.addEmoji(emoji: emoji)
                    
                    self.dismiss(animated: true) {
                        
                    }
                }
            }
        }
    }
}

