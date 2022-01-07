//
//  ViewController.swift
//  Animated Progress Bar
//
//  Created by Сергей on 07.01.2022.
//

import UIKit

let shapeLayer = CAShapeLayer()

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // drawing a circle
        
        let center = view.center
        let circularPath = UIBezierPath(arcCenter: center, radius: 100, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        shapeLayer.path = circularPath.cgPath
        
        shapeLayer.strokeColor = UIColor.red.cgColor
        shapeLayer.lineWidth = 10
        
        shapeLayer.strokeEnd = 0
        view.layer.addSublayer(shapeLayer)
        
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap)))
    }
    @objc private func handleTap(){
        print ("Walahala!!")
        
        let basicAnimation = CABasicAnimation(keyPath: "strokeEnd")
        
        basicAnimation.toValue = 1
        
        shapeLayer.add(basicAnimation, forKey: "urSoBasic")
    }
}


