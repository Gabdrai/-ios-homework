//
//  ViewController.swift
//  RPS
//
//  Created by Gabriel Drai on 19/11/2017.
//  Copyright © 2017 Gabriel Drai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var scaryClownLabel: UILabel!
    
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBOutlet weak var scissorsButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var rockButton: UIButton!
    
    @IBOutlet weak var playAgainButton: UIButton!
    
    
    var playerTurn = randomSign()
    func play(_ playerTurn: Sign) {
        
        rockButton.isEnabled = false
        rockButton.isHidden = true
        
        paperButton.isEnabled = false
        paperButton.isHidden = true
        
        scissorsButton.isEnabled = false
        scissorsButton.isHidden = true
       
        let opponent = randomSign()
        scaryClownLabel.text = opponent.emojis
       
    
      
    }
    
    
    @IBAction func scissorsAttack(_ sender: Any) {
        play(.Scissors)
    }
    @IBAction func paperAttack(_ sender: Any) {
        play(.Paper)
    }
    
    @IBAction func rockAttack(_ sender: Any) {
        play(.Rock)
    }
    
    @IBAction func playAgain(_ sender: Any) {
        
        updateUI()
        
    }
    
    var gamestate:GameState!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gamestate = .Start
        updateUI()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    func updateUI() {
        
        if let mygame = gamestate {
            switch mygame {
            case .Start:
                //view.backgroundColor = UIColor.blue
                scaryClownLabel.text = "🤡"
                playAgainButton.isHidden = true
                
                
                rockButton.isHidden = false
                rockButton.isEnabled = true
                
                scissorsButton.isHidden = false
                scissorsButton.isEnabled = true
                
                paperButton.isHidden = false
                paperButton.isEnabled = true
 
                
            case .Draw:
                view.backgroundColor = UIColor.red
            case .Win:
                view.backgroundColor = UIColor.green
            case .Lose:
                view.backgroundColor = UIColor.black
            }
        }
        if let mygame = gamestate {
            switch mygame {
            case .Start:
                statusLabel.text = "Started"
            case .Win:
                statusLabel.text = "You Won"
            case .Lose:
                statusLabel.text = "You lose motherfucker"
            case .Draw:
                statusLabel.text = "That's a tie"
            }
        }
        
        print("playerturn: \(playerTurn)")
        /*
        switch playerTurn {
        case .Rock:
            rockButton.isHidden = false
            paperButton.isHidden = true
            scissorsButton.isHidden = true
        
        case .Paper:
            rockButton.isHidden = true
            paperButton.isHidden = false
            scissorsButton.isHidden = true
            
        case .Scissors:
            rockButton.isHidden = true
            paperButton.isHidden = true
            scissorsButton.isHidden = false
        }
 */
        playAgainButton.isHidden = false
        
        }
    
        
    }
        







