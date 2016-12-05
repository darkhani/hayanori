//
//  ViewController.swift
//  ShowU
//
//  Created by INTAEK HAN on 2016. 12. 6..
//  Copyright © 2016년 TEGINE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var msgLabel: UILabel!
    
    @IBOutlet weak var triggerButton: UIButton!
    
    var isNightMode:Bool = false
    
    var msgArr:[String] = ["박ㄹ혜는 하야하라","탄핵만이 살길이다","그네는 순실이 품으로..."]

    var idx = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        msgLabel.text = msgArr[0]
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: "moveBack:")
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        self.view.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: "touchTriggerButton:")
        swipeLeft.direction = UISwipeGestureRecognizerDirection.left
        self.view.addGestureRecognizer(swipeLeft)
        
        let tapOnce = UITapGestureRecognizer(target: self, action: "touchNightButton:")
//        tapOnce = UITapGestureRecognizer
        tapOnce.numberOfTouchesRequired = 1
        self.view.addGestureRecognizer(tapOnce)
        
        
    }

    @IBAction func touchTriggerButton(_ sender: Any) {
        
        if let aLabel = self.msgLabel {
            aLabel.pushTransition(duration: 0.4)
            
            aLabel.text = self.msgArr[idx]
            idx = idx + 1
            if idx == msgArr.count {
                idx = 0
            }
        }
        
    }
    
    func moveBack(_ sender: Any) {
        if let aLabel = self.msgLabel {
            aLabel.pushTransitionReverse(duration: 0.4)
            
            aLabel.text = self.msgArr[idx]
            idx = idx + 1
            if idx == msgArr.count {
                idx = 0
            }
        }
    }
   
    @IBAction func touchNightButton(_ sender: Any) {
        
        if isNightMode == false {
            isNightMode = true
            self.view.backgroundColor = UIColor.black
            self.msgLabel.textColor = UIColor.yellow
            triggerButton.titleLabel?.text = "낮모드"
        } else {
            isNightMode = false
            self.view.backgroundColor = UIColor.white
            self.msgLabel.textColor = UIColor.black
            triggerButton.titleLabel?.text = "밤모드"
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

