//
//  CustomView.swift
//  Event
//
//  Created by Sergey Yuryev on 04/02/15.
//  Copyright (c) 2015 snyuryev. All rights reserved.
//

import UIKit

@IBDesignable

class CustomView: UIView {
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        didSet {
            layer.borderColor = borderColor?.CGColor
        }
    }
    
}
