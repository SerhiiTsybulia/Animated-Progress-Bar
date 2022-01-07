//
//  ViewController.swift
//  Animated Progress Bar
//
//  Created by Сергей on 07.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // drawing a circle
        let shapeLayer = CAShapeLayer()
        let center = view.center
        let circularPath = UIBezierPath(arcCenter: center, radius: 100, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        shapeLayer.path = circularPath.cgPath
        view.layer.addSublayer(shapeLayer)
    }
    
    
}

