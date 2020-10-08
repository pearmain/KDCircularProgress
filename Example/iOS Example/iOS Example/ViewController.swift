//
//  ViewController.swift
//  iOS Example
//
//  Created by Kaan Dedeoglu on 9/21/16.
//  Copyright © 2016 Kaan Dedeoglu. All rights reserved.
//

import UIKit
import KDCircularProgress

class ViewController: UIViewController {
    @IBOutlet weak var progressLoading: KDCircularProgress!
//    var progress: KDCircularProgress!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(white: 0.22, alpha: 1)
        
//        progress = KDCircularProgress(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
//        progress.startAngle = -90
//        progress.progressThickness = 0.5
//        progress.trackThickness = 0.5
//        progress.clockwise = true
//        progress.gradientRotateSpeed = 2
//        progress.roundedCorners = true
//        progress.glowMode = .forward
//        progress.glowAmount = 1
//        progress.dotColor = .red
//        progress.dotThickness = 0.2
//        progress.set(colors: UIColor.blue, UIColor.white)
//        progress.center = CGPoint(x: view.center.x, y: view.center.y + 25)
//        view.addSubview(progress)
    }
    
    @IBAction func sliderDidChangeValue(_ sender: UISlider) {
//        progress.angle = Double(sender.value)
    }
    
    @IBAction func animateButtonTapped(_ sender: UIButton) {
        progressLoading.animate(fromAngle: 0, toAngle: 200, duration: 2) { completed in
            if completed {
                print("animation stopped, completed")
            } else {
                print("animation stopped, was interrupted")
            }
        }
    }
}


