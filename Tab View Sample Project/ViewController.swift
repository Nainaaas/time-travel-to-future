//
//  ViewController.swift
//  Tab View Sample Project
//
//  Created by shahina kassim on 28/08/2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var labelFirst: UILabel!
    @IBOutlet weak var labelSecond: UILabel!
    @IBOutlet weak var labelThird: UILabel!
    @IBOutlet weak var labelFourth: UILabel!
    @IBOutlet weak var labelTimer: UILabel!
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateTime()
        updateViews()
       
        
    }
    func updateViews(){
        let year = Utility().getCurrentYear()
        labelFirst.text = Utility().getStringAtIndex(str: year, atIndex: 0)
        labelSecond.text = Utility().getStringAtIndex(str: year, atIndex: 1)
        labelThird.text = Utility().getStringAtIndex(str: year, atIndex: 2)
        labelFourth.text = Utility().getStringAtIndex(str: year, atIndex: 3)
        
        self.timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
        
       
        
        
    }
    @objc func updateTime(){
        labelTimer.text = Utility().getTime()
        UIView.animate(withDuration: 1.0, delay: 0.1, options: .curveEaseOut) {
            self.view.alpha = 0.5
        } completion: { Bool in
            self.view.alpha = 1.0
        }

    }

}

