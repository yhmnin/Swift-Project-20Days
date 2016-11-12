//
//  ViewController.swift
//  StopWatch
//
//  Created by 付晓 on 2016/11/12.
//  Copyright © 2016年 付晓. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var pauseButton: UIButton!
    
    var counter = 0.0
    var isPlaying = false
    var time = Timer()
    
    @IBAction func startButtonDidTouch(_ sender: Any) {
        startButton.isEnabled = false
        pauseButton.isEnabled = true
        
        isPlaying = true
        time = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(UpdateTimer), userInfo: nil, repeats: true)
    }
    
    
    @IBAction func pauseButtonDidTouch(_ sender: Any) {
        time.invalidate()
        isPlaying = false
        startButton.isEnabled = true
        pauseButton.isEnabled = false
        
        
    }
    
    @IBAction func resetButtonDidTouch(_ sender: Any) {
        time.invalidate()
        isPlaying = false
        counter = 0.0
        
        startButton.isEnabled = true
        pauseButton.isEnabled = false
        
        timeLabel.text = String(counter)
    }
    
    func UpdateTimer(){
        counter += 0.1
        timeLabel.text = String(format: "%.1f",counter)
    }
    
    
    
    
    
    
    
    
    
    
    
    
}

