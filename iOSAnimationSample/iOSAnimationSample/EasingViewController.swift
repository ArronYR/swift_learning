//
//  EasingViewController.swift
//  iOSAnimationSample
//
//  Created by YangRong on 16/4/14.
//  Copyright © 2016年 Arron. All rights reserved.
//

import UIKit

class EasingViewController: UIViewController {

    @IBOutlet weak var blueSquare: UIView!
    @IBOutlet weak var redSquare: UIView!
    @IBOutlet weak var orangeSquare: UIView!
    @IBOutlet weak var yellowSquare: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animateWithDuration(1) { () -> Void in
            self.blueSquare.center.x = self.view.bounds.width - self.blueSquare.center.x
        }
        
        UIView.animateWithDuration(1, delay: 0, options: [.CurveEaseIn], animations: { () -> Void in
            self.redSquare.center.x = self.view.bounds.width - self.redSquare.center.x
        }, completion: nil)
        
        UIView.animateWithDuration(1, delay: 0, options: [.CurveEaseOut], animations: { () -> Void in
            self.orangeSquare.center.x = self.view.bounds.width - self.orangeSquare.center.x
        }, completion: nil)
        
        UIView.animateWithDuration(1, delay: 0, options: [.CurveEaseInOut], animations: { () -> Void in
            self.yellowSquare.center.x = self.view.bounds.width - self.yellowSquare.center.x
        }, completion: nil)
    }
}
