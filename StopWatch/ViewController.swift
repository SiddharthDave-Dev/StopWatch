//
//  ViewController.swift
//  StopWatch
//
//  Created by Siddharth Dave on 27/07/23.
//

import UIKit

class ViewController: UIViewController {

    var secound = 0
    var minute = 0
    var hour = 0
    var myTimer = Timer()
    
    @IBOutlet weak var StopWtcahLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        StopWtcahLabel.text = "0:0:0"
    }

    @IBAction func startBtn(_ sender: Any) {
        myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.myaction), userInfo: nil, repeats: true )
    }
    @objc func myaction()
    {
        secound += 1
        
        if secound == 60
        {
            secound = 0
            minute += 1
        }
        else if minute == 60
        {
            secound = 0
            minute = 0
            hour += 1
        }
        StopWtcahLabel.text = String(hour)+":"+String(minute)+":"+String(secound)
    }
    @IBAction func stopBtn(_ sender: Any) {
        myTimer.invalidate()
    }
    
    @IBAction func resetBtn(_ sender: Any) {
        myTimer.invalidate()
        secound = 0
        minute = 0
        hour = 0
        StopWtcahLabel.text = "0:0:0"
    }
}

