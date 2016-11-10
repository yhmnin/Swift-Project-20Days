//
//  ViewController.swift
//  Headsup
//
//  Created by 付晓 on 2016/11/10.
//  Copyright © 2016年 付晓. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // array of question
    var questions = [
        "What’s the name of this city in the United States with a bell in the near middle of the city?",
        "What is the name of the spaceship first landed on the moon?",
        "What does 'umbros' mean in Latin? Translate it into Sentinelese.",
        "What’s the first photo printed from a camera in the world?",
        "When was the first email ever sent in the world?",
        "… and what was that email about?"
    ]
    var currentQuestionIndex = 0
    @IBOutlet var questionLabel: UILabel!
    
    
    @IBAction func questionButtonDidTouch(_ sender: Any) {
        
        currentQuestionIndex += 1
        let numberOfQuesitons = questions.count
        let nextQuestionIndex = currentQuestionIndex % numberOfQuesitons
        questionLabel.text = questions[nextQuestionIndex]
        
    }
}

