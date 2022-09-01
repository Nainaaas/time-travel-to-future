//
//  SeconViewController.swift
//  Tab View Sample Project
//
//  Created by shahina kassim on 01/09/2022.
//

import UIKit

class SeconViewController: UIViewController {
    @IBOutlet weak var lab2: UILabel!
    @IBOutlet weak var lab3: UILabel!
    @IBOutlet weak var lab4: UILabel!
    
    @IBOutlet weak var lab1: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func timeTravelAction(_ sender: Any) {
        let utility = Utility()
        let year = utility.getRandomYear()
        lab1.text = utility.getStringAtIndex(str: year, atIndex: 0)
        lab2.text = utility.getStringAtIndex(str: year, atIndex: 1)
        lab3.text = utility.getStringAtIndex(str: year, atIndex: 2)
        lab4.text = utility.getStringAtIndex(str: year, atIndex: 3)
        animate(interval: 1.0, delay: 0.2, object: lab1)
        animate(interval: 1.0, delay: 0.4, object: lab2)
        animate(interval: 1.0, delay: 0.6, object: lab3)
        animate(interval: 1.0, delay: 0.8, object: lab4)
        
    }
    func animate(interval : CGFloat, delay: CGFloat, object: UIView){
        UIView.animate(withDuration: interval, delay: delay, options: .curveEaseOut) {
            object.center.x -= self.view.layer.bounds.width
            
        } completion: { Bool in
            
        }

        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
