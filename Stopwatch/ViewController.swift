//
//  ViewController.swift
//  Stopwatch
//
//  Created by Macbook on 05/07/2021.
//
    
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pauseBtnLbl: UIButton!
    @IBOutlet weak var playbtnOut: UIButton!
    @IBOutlet weak var timeLbl: UILabel!
    var isRunning = false
    var timer = Timer()
    var counter = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timeLbl.text = "\(counter)"
        playbtnOut.isEnabled = true
        pauseBtnLbl.isEnabled = false
    }
   
    @IBAction func playBtn(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 0.90, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
        playbtnOut.isEnabled = false
        pauseBtnLbl.isEnabled = true
        isRunning = true
    }
    @objc func updateTime(){
        counter += 0.1
        timeLbl.text = String(format: "%.1f", counter)
        print("\(counter)")
        
    }
    @IBAction func pauseBtn(_ sender: Any) {
        timer.invalidate()
        playbtnOut.isEnabled = true
        pauseBtnLbl.isEnabled = false
        isRunning = false
        
    }
    @IBAction func resetAction(_ sender: UIButton) {
        counter = 0.0
        timeLbl.text = "\(counter)"
        timer.invalidate()
        playbtnOut.isEnabled = true
        pauseBtnLbl.isEnabled = false
        isRunning = false
        
    }
    

}

