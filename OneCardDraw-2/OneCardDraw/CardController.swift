//
//  CardController.swift
//  OneCardDraw
//
//  Created by Tyler on 6/2/16.
//  Copyright © 2016 Falcone Development. All rights reserved.
//

import Foundation



class CardController {
    // address of flower shop v
    static let baseURL = NSURL(string: "http://deckofcardsapi.com/api/deck/new/draw/")
    
    // Karl get flowers                                if Joe gets you anthing, this is what he gets
    static func drawCards(numberOfCards: Int, completion: (card: [Card]) -> Void)  {
        
        // Karl makes sure the address to the flower shop is real
        guard let unwrappedURL = self.baseURL else {
            fatalError("URL optional is nil \(#file)")
        }
        
        // How many flowers Karl wants
        let urlParameters = ["count": "\(numberOfCards)"]
        
        // Joe goes to shop, Gets everything but not in the format we want...
        NetworkController.performRequestForURL(unwrappedURL, httpMethod: .Get, urlParameters: urlParameters, body: nil) { (data, error) in
            
            // If Joe brough us stuff
            guard let data = data,
                
                //       we seriously try and work with it
                jsonAnyObject = try? NSJSONSerialization.JSONObjectWithData(data, options: .AllowFragments),
                //      We have objects but we want them in this arrangement (Card deck still wrapped in plastic)
                jsonDictionary = jsonAnyObject as? [String:AnyObject],
                cardDictionaries = jsonDictionary["cards"] as? [[String:AnyObject]] else {
                    completion(card: [])
                    return
            }
            //                    go through ARRAYngement for value of 'Rose', passes to init in model to see if 'Rose" has all needed values (pedals, stem, smell)
            let cards = cardDictionaries.flatMap {Card(dictionary: $0)}
            // has flowers
            completion(card: cards)
        }
        
    }
    
}