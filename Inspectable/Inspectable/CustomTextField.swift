//
//  CustomTextField.swift
//  Event
//
//  Created by Sergey Yuryev on 04/02/15.
//  Copyright (c) 2015 snyuryev. All rights reserved.
//

import UIKit

@IBDesignable

class CustomTextField: UITextField {

    @IBInspectable var clearButtonImage: UIImage? {
        didSet {
            if let button = self.valueForKey("_clearButton") as? UIButton {
                button.setImage(clearButtonImage, forState: UIControlState.Normal)
                button.setImage(clearButtonImage, forState: UIControlState.Highlighted)
            }
        }
    }
    
    @IBInspectable var allCornersRadius: CGFloat = 0 {
        didSet {
            let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: UIRectCorner.AllCorners, cornerRadii: CGSizeMake(allCornersRadius, allCornersRadius))
            
            var layer = CAShapeLayer()
            layer.frame = self.bounds
            layer.path = path.CGPath
            
            self.layer.mask = layer
        }
    }
    
    @IBInspectable var topCornersRadius: CGFloat = 0 {
        didSet {
            let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: UIRectCorner.TopLeft | UIRectCorner.TopRight, cornerRadii: CGSizeMake(topCornersRadius, topCornersRadius))
            
            var layer = CAShapeLayer()
            layer.frame = self.bounds
            layer.path = path.CGPath
            
            self.layer.mask = layer
        }
    }
    
    @IBInspectable var bottomCornersRadius: CGFloat = 0 {
        didSet {
            
            let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: UIRectCorner.BottomLeft | UIRectCorner.BottomRight, cornerRadii: CGSizeMake(bottomCornersRadius, bottomCornersRadius))
            
            var layer = CAShapeLayer()
            layer.frame = self.bounds
            layer.path = path.CGPath
            
            self.layer.mask = layer
            
        }
    }
    
    @IBInspectable var placeholderColor: UIColor? {
        didSet {
            let attributesDictionary = [NSForegroundColorAttributeName: placeholderColor!]
            self.attributedPlaceholder = NSAttributedString(string: self.placeholder!, attributes: attributesDictionary)
        }
    }

    
    override func prepareForInterfaceBuilder() {

    }
    
}
