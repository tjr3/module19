//
//  Card.swift
//  OneCardDraw
//
//  Created by Tyler on 6/2/16.
//  Copyright © 2016 Falcone Development. All rights reserved.
//

import Foundation

class Card {
    
    let suit: String
    let value: String
    let imageEndpoint: String
    
    
    init?(dictionary: [String:AnyObject]) {
        guard let suit = dictionary["suit"] as? String,
        value = dictionary["value"]as? String,
            imageEndpoint = dictionary["image"] as? String else {
                return nil
        }
        
        self.value = value
        self.suit = suit
        self.imageEndpoint = imageEndpoint
    }
    
}