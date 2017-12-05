//
//  Sign.swift
//  RPS
//
//  Created by Gabriel Drai on 19/11/2017.
//  Copyright © 2017 Gabriel Drai. All rights reserved.
//

import Foundation
import GameplayKit

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

func randomSign() -> Sign {
  let sign = randomChoice.nextInt()
    if sign == 0 {
        return .Rock
    } else if sign == 1 {
        return .Paper
    } else {
        return.Scissors
    }
    
}

enum Sign {
    case Rock
    case Scissors
    case Paper
    
    var emojis: String {
        switch self {
        case .Rock:
            return "👊🏼"
        case .Scissors:
            return "✌🏻"
        case .Paper:
            return "✋🏻"
        }
    }
    
    func Compare(opponentChoice:Sign) -> GameState {
        
        if self == opponentChoice {
            return GameState.Draw
        } else if self == .Paper && opponentChoice == .Rock {
            return GameState.Win
        } else if self == .Rock && opponentChoice == .Paper {
            return GameState.Lose
        } else if self == .Scissors && opponentChoice == .Paper {
            return GameState.Win
        } else if self == .Paper && opponentChoice == .Scissors {
            return GameState.Lose
        } else if self == .Scissors && opponentChoice == .Rock {
            return GameState.Lose
        } else if self == .Rock && opponentChoice == .Scissors {
            return GameState.Win
        }
        
        
        return GameState.Draw
    }
    
    
}



