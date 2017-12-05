//
//  ViewController.swift
//  EmojiDictionary
//
//  Created by Gabriel Drai on 28/11/2017.
//  Copyright © 2017 Gabriel Drai. All rights reserved.
//

import UIKit

class ViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource, AddEmojiDelegate, EditEmojiDelegate {
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
    }

        var newArray : [Emoji] = self.emojis!
        newArray.remove(at: IndexPath.row)
        
        self.emojis = newArray
        
        Emoji.saveToFile(emojis: self.emojis!)
        
        tableView.deleteRows(at: [IndexPath], with: .automatic)
    }
    
    
    
    
    
    func addEmoji(emoji: Emoji) {
        self.emojis.append(emoji)
        self.tableView.reloadData()
    }
    

    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func addEmoji(_ sender: Any) {
        self.performSegue(withIdentifier: "addEmojiSegue", sender: nil)
        
    }
    
    
    var emojis: [Emoji] = [Emoji(symbol: String("😀"), name: "Grinning Face", emojiDescription: "A typical smiley face.", usage: "happiness"), Emoji(symbol: String("🤨"), name: "Confused Face", emojiDescription: "A confused, puzzled face.", usage: "unsure what to think; displeasure"), Emoji(symbol: String("😍"), name: "Heart Eyes", emojiDescription: "A smiley face with hearts for eyes.", usage: "love of something; attractive")];
    
    
    lazy var emoji : [Emoji]? = {
        if let loadedEmojis : [Emoji] = Emoji.loadFromFile()
        {
            return loadedEmojis
        }
        else if let sampleEmojis : [Emoji] = Emoji.loadSampleEmojis()
        {
            Emoji.saveToFile(emojis: sampleEmojis)
            return sampleEmojis
        }
        
        return nil
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //self.tableView.register(NSClassFromString("UITableViewCell"), forCellReuseIdentifier: "Cell")
        
        self.tableView.register(UINib(nibName:"DetailTableViewCell", bundle: Bundle.main), forCellReuseIdentifier: "Cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell : DetailTableViewCell = (tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? DetailTableViewCell)!
       
        let emoji : Emoji = self.emojis[indexPath.row]
        
        //self.performSegue(withIdentifier: "editEmojiSegue", sender: emoji)
        
        cell.updateViewEmoji(emoji: emoji)
        
//        cell.textLabel?.text = String(emoji.symbol)
//        cell.detailTextLabel?.text = emoji.description
//
//
//        cell.textLabel?.text = "Row \(indexPath.row)"
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji : Emoji = self.emojis[indexPath.row]
        self.performSegue(withIdentifier: "editEmojiSegue", sender: emoji)
    }
    
    func editEmoji(emoji: Emoji) {
        self.emojis[(self.tableView.indexPathForSelectedRow?.row)!] = emoji
        self.tableView.reloadData()
    }
    
    
       override func prepare(for segue: UIStoryboardSegue, sender: Any?)
        {
            
            if let editVC : EditEmojiViewController = segue.destination as? EditEmojiViewController {
                
                editVC.emoji = sender as? Emoji
                editVC.delegate = self
                
            }
            
            
            if let addVC : AddEmojiViewController = segue.destination as? AddEmojiViewController
            {
                addVC.delegate = self
            }
        }
        
    }
    



