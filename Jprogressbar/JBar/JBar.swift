//
//  JBar.swift
//  Jprogressbar
//
//  Created by Javed Multani(javedmultani16@gmail.com) on 07/10/2019.
//  Copyright © 2019 iOS. All rights reserved.
//

import UIKit
import Foundation

class JBar: UIView {
    
    var progressView = UIView()
    // @IBInspectable public var trackColor:UIColor = UIColor.gray
    @IBInspectable public var progressColor:UIColor = UIColor.red
    @IBInspectable public var isCornerRadius:Bool = true
    @IBInspectable public var progressValue:Double = 50.0
    /// The color of the progress bar
    @IBInspectable public var barColor: UIColor = UIColor.green
    
    override func draw(_ rect: CGRect) {
        
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.height / 2.0
        
        setup()
        
    }
    
    @IBInspectable var borderWidth: Double {
        get {
            return Double(self.layer.borderWidth)
        }
        set {
            self.layer.borderWidth = CGFloat(newValue)
        }
    }
    @IBInspectable var borderColor: UIColor? {
        get {
            return UIColor(cgColor: self.layer.borderColor!)
        }
        set {
            self.layer.borderColor = newValue?.cgColor
        }
    }
    @IBInspectable var trackColor: UIColor? {
        get {
            return UIColor(cgColor: self.backgroundColor! as! CGColor)
        }
        set {
            self.backgroundColor = newValue
        }
    }
    func setup(){
        
        let total =  Double(self.frame.width)
        let value =  (total * progressValue) / 100.0
        let width =  value.rounded(toPlaces: 0)
        let height = Double(self.frame.height)
        
        progressView = UIView(frame: CGRect(x: 00, y: 0, width:  width, height: height))
        self.addSubview(progressView)
        progressView.backgroundColor = progressColor
        if self.isCornerRadius{
            self.progressView.clipsToBounds = true
            self.progressView.layer.cornerRadius = self.frame.height / 2.0
        }
    }
}
extension Double {
    /// Rounds the double to decimal places value
    func rounded(toPlaces places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
