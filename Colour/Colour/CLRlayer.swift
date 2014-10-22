//
//  CLRlayer.swift
//  Colour
//
//  Created by Alex Mitchell on 10/7/14.
//  Copyright (c) 2014 Alex Mitchell. All rights reserved.
//

import UIKit

class CLRlayer: NSObject {
    var startPoint: CGFloat
    var endPoint: CGFloat
    var colour: UIColor
    var width: CGFloat
    var path: UIBezierPath
    
    convenience init(colour: UIColor, width: Float, path: UIBezierPath){
        self.init(colour: colour, width: width, path: path, startPoint: 0, endPoint: 1)
    }
    
    func toCALayer() -> CAShapeLayer {
        var layer = CAShapeLayer()
        layer.path = path.CGPath
        layer.strokeColor = colour.CGColor
        layer.fillColor = UIColor.clearColor().CGColor
        layer.lineWidth = width
        layer.strokeStart = startPoint
        layer.strokeEnd = endPoint
        return layer
    }
    init(colour: UIColor, width: Float, path: UIBezierPath, startPoint: Float, endPoint: Float){
        self.colour = colour
        self.width = CGFloat(width)
        self.path = path
        self.startPoint = CGFloat(startPoint)
        self.endPoint = CGFloat (endPoint)
    }
   
}
