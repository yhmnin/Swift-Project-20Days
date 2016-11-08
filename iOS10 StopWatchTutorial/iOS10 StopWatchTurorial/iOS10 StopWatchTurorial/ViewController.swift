//
//  ViewController.swift
//  iOS10 StopWatchTurorial
//
//  Created by 付晓 on 2016/11/8.
//  Copyright © 2016年 付晓. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var counter = 0.0
    var timer = Timer()
    var isPlaying = false
    
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var StartButtonDidTouch: UIButton!
    @IBOutlet weak var PauseButtonDidTouch: UIButton!
    @IBOutlet weak var ResetButtonDidTouch: UIButton!
    
    @IBAction func startTimer(_ sender: Any) {
        
        if(isPlaying) {
            return
        }
        StartButtonDidTouch.isEnabled = false
        PauseButtonDidTouch.isEnabled = true
        
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(UpdateTimer), userInfo: nil, repeats: true)
        isPlaying = true
        
        
    }
    @IBAction func pauseTimer(_ sender: Any) {
        StartButtonDidTouch.isEnabled = true
        PauseButtonDidTouch.isEnabled = false
        
        timer.invalidate()
        isPlaying = false
        
    }
    
    @IBAction func resertTimer(_ sender: Any) {
        StartButtonDidTouch.isEnabled = true
        PauseButtonDidTouch.isEnabled = false
        
        timer.invalidate()
        isPlaying = false
        counter = 0.0
        timeLabel.text = String(counter)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timeLabel.text = String(counter)
        
        PauseButtonDidTouch.isEnabled = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func UpdateTimer(){
        counter = counter + 0.1
        timeLabel.text = String(format: "%.1f",counter)}

}

