//
//  Emoji.swift
//  EmojiDictionary
//
//  Created by Gabriel Drai on 28/11/2017.
//  Copyright © 2017 Gabriel Drai. All rights reserved.
//

import Foundation

class Emoji : NSObject, NSCoding
{
    var symbol: String
    var name : String
    var emojiDescription : String
    var usage : String
    
    static let DocumentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    static let ArchiveURL = DocumentsDirectory.appendingPathComponent("emojis")
    
    init(symbol: String, name: String, emojiDescription: String, usage: String )
    {
        self.symbol = symbol
        self.name = name
        self.emojiDescription = emojiDescription
        self.usage = usage
    }
    
    
    func serialize() -> Dictionary<String,any> {
        
        var dict : 
    }
    
    
    
    
    
    
    static func loadFromPlist() -> [Emoji]?  {
        return NSKeyedUnarchiver.unarchiveObject(withFile: Emoji.ArchiveURL.path) as? [Emoji]
    }
    
    static func loadSampleEmojis() -> [Emoji] {
        return [Emoji(symbol: ":grinning:", name: "Grinning Face", emojiDescription: "A typical smiley face.", usage: "happiness"),
                Emoji(symbol: ":confused:", name: "Confused Face", emojiDescription: "A confused, puzzled face.", usage: "unsure what to think; displeasure"),
                Emoji(symbol: ":heart_eyes:", name: "Heart Eyes", emojiDescription: "A smiley face with hearts for eyes.", usage: "love of something; attractive"),
                Emoji(symbol: ":cop:", name: "Police Officer", emojiDescription: "A police officer wearing a blue cap with a gold badge. He is smiling, and eager to help.", usage: "person of authority"),
                Emoji(symbol: ":turtle:", name: "Turtle", emojiDescription: "A cute turtle.", usage: "Something slow"),
                Emoji(symbol: ":elephant:", name: "Elephant", emojiDescription: "A gray elephant.", usage: "good memory"),
                Emoji(symbol: ":spaghetti:", name: "Spaghetti", emojiDescription: "A plate of spaghetti.", usage: "spaghetti"),
                Emoji(symbol: ":game_die:", name: "Die", emojiDescription: "A single die.", usage: "taking a risk, chance; game"),
                Emoji(symbol: ":tent:", name: "Tent", emojiDescription: "A small tent.", usage: "camping"),
                Emoji(symbol: ":books:", name: "Stack of Books", emojiDescription: "Three colored books stacked on each other.", usage: "homework, studying"),
                Emoji(symbol: ":broken_heart:", name: "Broken Heart", emojiDescription: "A red, broken heart.", usage: "extreme sadness"),
                Emoji(symbol: ":zzz:", name: "Snore", emojiDescription: "Three blue \'z\'s.", usage: "tired, sleepiness"),
                Emoji(symbol: ":checkered_flag:", name: "Checkered Flag", emojiDescription: "A black and white checkered flag.", usage: "completion")]
    }
    
    static func saveToFile(emojis: [Emoji]) {
        NSKeyedArchiver.archiveRootObject(emojis, toFile: Emoji.ArchiveURL.path)
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        
        guard let symbol = aDecoder.decodeObject(forKey: "symbol") as? String,
            let name = aDecoder.decodeObject(forKey: "name") as? String,
            let detailemojiDescription = aDecoder.decodeObject(forKey: "emojiDescription") as? String,
            let usage = aDecoder.decodeObject(forKey: "usage") as? String
            else {
                return nil
        }
        
        self.init(symbol: symbol, name: name, emojiDescription: detailemojiDescription, usage: usage)
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(symbol, forKey: "symbol")
        aCoder.encode(name, forKey: "name")
        aCoder.encode(emojiDescription, forKey: "emojiDescription")
        aCoder.encode(usage, forKey: "usage")
    }
}
