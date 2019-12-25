//
//  ViewController.swift
//  RoundedCorner
//
//  Created by Musaddique Billah Talha on 8/4/19.
//  Copyright © 2019 MazeGeek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var orangeView: UIView!
    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var greenView: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setupUI()
    }
    
    private func setupUI() {
        
        orangeView.round(corners: [.topLeft, .bottomLeft], cornerRadius: 50)
        blueView.round(corners: [.topLeft, .topRight], cornerRadius: 20)
        redView.round(corners: [.topLeft, .bottomRight], cornerRadius: 20)
        greenView.round(corners: [.topRight, .bottomLeft], cornerRadius: 20)
    }
}

extension UIView {
    
    func round(corners: UIRectCorner, cornerRadius: Double) {
        
        let size = CGSize(width: cornerRadius, height: cornerRadius)
        let bezierPath = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: size)
        let shapeLayer = CAShapeLayer()
        shapeLayer.frame = self.bounds
        shapeLayer.path = bezierPath.cgPath
        self.layer.mask = shapeLayer
    }
}
