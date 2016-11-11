//
//  ViewController.swift
//  inspire Card
//
//  Created by 付晓 on 2016/11/11.
//  Copyright © 2016年 付晓. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    @IBOutlet weak var heartButton: UIButton!
    
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var avatarNameLabel: UILabel!
    
    let quotes = ["You must first determine your passion. I mean other than making the money!"," I mean other than making the money!","You must first determine your passion. ","Nothing is possible"]
    let avatarImageName = ["avatar1","avatar2","avatar3","avatar4"]
    let imageNames = ["Jeanette Perkins","Inez Cannon","Sannon","Noleor"]
    
    @IBAction func inspiremeButtonDidTouch(_ sender: Any) {
        
        let randomNumber = Int(arc4random()) % 4
        let newQuoteLabel = quotes[randomNumber]
        let avatarImage = avatarImageName[randomNumber]
        let avatarName = imageNames[randomNumber]
        
        
        quoteLabel.text = newQuoteLabel
        avatarImageView.image = UIImage(named:avatarImage)
        avatarNameLabel.text = avatarName
    }
    

}

