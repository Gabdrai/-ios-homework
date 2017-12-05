//
//  DetailTableViewController.swift
//  EmojiDictionary
//
//  Created by Gabriel Drai on 28/11/2017.
//  Copyright © 2017 Gabriel Drai. All rights reserved.
//

import UIKit

class DetailTableViewCell: UITableViewCell {

    
    @IBOutlet private weak var lblEmoji: UILabel!
    
    @IBOutlet private weak var lblDescription: UILabel!
    
    @IBOutlet private weak var lblUsage: UILabel!
    
    
    func updateViewEmoji(emoji: Emoji) {
       
        self.lblEmoji.text = String(emoji.symbol)
        self.lblDescription.text = String(emoji.description)
        self.lblUsage.text = String(emoji.usage)
    }

}
