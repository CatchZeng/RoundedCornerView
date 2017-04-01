//
//  RoundedCornerView.swift
//  mZero-iOS
//
//  Created by CatchZeng on 2017/3/22.
//  Copyright © 2017年 Shenzhen Maker Works Technology Co., Ltd. All rights reserved.
//

import UIKit

@IBDesignable
open class RoundedCornerView: UIView {
    
    @IBInspectable var radiusPercent: CGFloat = 0.5 {
        didSet {
            setCornerRadius()
        }
    }
    @IBInspectable var topLeft: Bool = true
    @IBInspectable var topRight: Bool = true
    @IBInspectable var bottomLeft: Bool = true
    @IBInspectable var bottomRight: Bool = true
    
    @IBInspectable var constantRadius: CGFloat = -1{
        didSet {
            setCornerRadius()
        }
    }
    
    override open func layoutSubviews() {
        super.layoutSubviews()
        setCornerRadius()
    }
    
    private func setCornerRadius(){
        if topLeft && topRight && bottomLeft && bottomRight{
            if constantRadius >= 0{
                self.layer.cornerRadius = constantRadius
                self.layer.masksToBounds = true
                
            }else{
                self.layer.cornerRadius = self.frame.size.height*CGFloat(radiusPercent)
                self.layer.masksToBounds = true
            }
            
        }else{
            let radii = (constantRadius >= 0 ) ? constantRadius :self.frame.size.height*CGFloat(radiusPercent)
            
            var corners:UInt =  0
            if topLeft {
                corners |= UIRectCorner.topLeft.rawValue
            }
            if topRight {
                corners |= UIRectCorner.topRight.rawValue
            }
            if bottomLeft {
                corners |= UIRectCorner.bottomLeft.rawValue
            }
            if bottomRight {
                corners |= UIRectCorner.bottomRight.rawValue
            }
            let rectCorner =  UIRectCorner.init(rawValue: corners)
            
            let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: rectCorner, cornerRadii: CGSize(width: radii, height: radii))
            let maskLayer = CAShapeLayer()
            maskLayer.frame = self.bounds
            maskLayer.path = path.cgPath
            self.layer.mask = maskLayer
        }
    }
}
