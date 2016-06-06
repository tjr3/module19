//
//  GameController.swift
//  OneCardDraw
//
//  Created by Tyler on 6/2/16.
//  Copyright © 2016 Falcone Development. All rights reserved.
//

import Foundation


class GameController {
    
    enum Winner {
        case Player
        case Computer
        case Tie
    }
    
    static func  playGame(completion: (playerCard: Card, computerCard: Card) -> Void) {
        CardController.drawCards(2) { (cards) in
            guard cards.count == 2 else {
                print("There was a problem")
                return
            }
            let playerCard = cards[0]
            let computerCard = cards[1]
            
            completion(playerCard: playerCard, computerCard: computerCard)
            
            
        }
    }
    
}