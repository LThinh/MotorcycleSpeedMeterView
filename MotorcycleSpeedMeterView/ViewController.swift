//
//  ViewController.swift
//  MotorcycleSpeedMeterView
//
//  Created by Thinh Le on 7/4/20.
//  Copyright © 2020 Thinh Le. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var speedMeterView: MotorcycleSpeedMeterView!
    
    var speed: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        speedMeterView.delegate = self
    }


    @IBAction func didTapChangeValueButton(_ sender: Any) {
        let randomSpeed = Int.random(in: -150..<150)
        speed += CGFloat(randomSpeed)
        if speed > speedMeterView.maxValue {
            speed = speedMeterView.maxValue
        }
        if speed < 0 {
            speed = 0
        }
        speedMeterView.updateValue(speed)
    }
}

extension ViewController: SpeedMeterViewDelegate {
    func speedMeterView(_ view: MotorcycleSpeedMeterView, didChange value: CGFloat) {
        print("Current Value: \(value)")
    }
}

