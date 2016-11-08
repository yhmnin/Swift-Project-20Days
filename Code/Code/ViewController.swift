//
//  ViewController.swift
//  Code
//
//  Created by 付晓 on 2016/11/4.
//  Copyright © 2016年 付晓. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftCardImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    var leftScore = 0
    
    @IBOutlet weak var rightCardImageView :UIImageView!
    @IBOutlet weak var rightScoreLabel: UILabel!
    var rightScore = 0
    
    let cardNames = ["ace","card2","card3","card4","card5","card6","card7","card8","card9","card10","jack","queen","king"]
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func dealTapped(sender:UIButton){
        
        //Randomize left number from 2 to 10
        let leftNumber  = Int(arc4random_uniform(9) + 2)
        
        //Set the left image
        leftCardImageView.image = UIImage(named:cardNames[leftNumber])
        //Randomize right number form 2 to 10
        let rightNumber = Int(arc4random_uniform(9) + 2)
        //Set the right image
        rightCardImageView.image = UIImage(named:cardNames[rightNumber])
        
        //Compare the card numbers 
        if leftNumber > rightNumber{
            //left card wins
            leftScore += 1
            
            //Incream the score
            leftScoreLabel.text = String(leftScore)
        }
        else if leftNumber == rightNumber{
        }
        else{
            //right card wins
            
            rightScore += 1
            
            //Incream the score
            rightScoreLabel.text = String(rightScore)
        }
    }
    
}
