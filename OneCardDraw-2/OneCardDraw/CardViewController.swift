//
//  CardViewController.swift
//  OneCardDraw
//
//  Created by Tyler on 6/2/16.
//  Copyright © 2016 Falcone Development. All rights reserved.
//

import UIKit

class CardViewController: UIViewController {
    
    

    @IBOutlet weak var playerImageView: UIImageView!
    @IBOutlet weak var computerImageView: UIImageView!


    // MARK: -Action Buttons
    @IBAction func playButtonTapped(sender: AnyObject) {
        GameController.playGame { (playerCard, computerCard) in
            ImageController.imageForUrl(playerCard.imageEndpoint, completion: { (image) in
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    self.playerImageView.image = image
                })
                
            })
            ImageController.imageForUrl(computerCard.imageEndpoint, completion: { (image) in
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                     self.computerImageView.image = image
                })
               
            })
        }
    }
}
