//
//  CLRlayer.swift
//  Colour
//
//  Created by Alex Mitchell on 10/7/14.
//  Copyright (c) 2014 Alex Mitchell. All rights reserved.
//

import UIKit

class CLRlayer: CAShapeLayer {
    
    required init(colour: UIColor, path: UIBezierPath, strokeWidth: Float){
        super.init()
        self.path = path.CGPath
        self.strokeColor = colour.CGColor
        self.fillColor = UIColor.clearColor().CGColor
        self.lineWidth = CGFloat(strokeWidth)
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
