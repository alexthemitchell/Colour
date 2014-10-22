//
//  CLRbase.swift
//  Colour
//
//  Created by Alex Mitchell on 10/7/14.
//  Copyright (c) 2014 Alex mitchell. All rights reserved.
//

import UIKit

class CLRbase: UIView {
    var colour: UIColor
    var layers: [CLRlayer]
    var width: CGFloat
    var track: UIBezierPath?
    var backgroundLayer: CAShapeLayer

    required init(coder aDecoder: NSCoder) {
        colour = UIColor.grayColor()
        layers = [CLRlayer]()
        width = 10
        backgroundLayer = CAShapeLayer()
        super.init(coder: aDecoder)
        resetTrack()
        layers.append(CLRlayer(colour: UIColor.redColor(), width: 10, path: track!))
        redrawView()
    }
    
    func resetTrack(){
        //reset track
        var arcCenter = CGPointMake(CGRectGetMidY(self.bounds), CGRectGetMidX(self.bounds))
        var radius = CGRectGetMidX(self.bounds)
        self.track = UIBezierPath(
            arcCenter: arcCenter,
            radius: radius,
            startAngle: CGFloat(M_PI_2),
            endAngle: CGFloat(5*M_PI_2),
            clockwise: true)
        
        //reset background
        backgroundLayer.path = track!.CGPath
        backgroundLayer.strokeColor = colour.CGColor
        backgroundLayer.fillColor = UIColor.clearColor().CGColor
        backgroundLayer.lineWidth = width
        self.layer.sublayers = []
        self.layer.addSublayer(backgroundLayer)
    }
    
    func redrawView(){
        self.layer.sublayers = []
        
        for layer in self.layers {
            self.layer.addSublayer(layer.toCALayer())
        }
    }
    
    func addColourLayer(){
        
    }
    func animate(){
        var duration = 1.0 - layers.first!.endPoint
        var strokeEndFinal = 1.0
        
        for layer in layers{
            var strokeEndAnimation = CABasicAnimation(keyPath: "strokeEnd")
            strokeEndAnimation.duration = CFTimeInterval(duration)
            strokeEndAnimation.fromValue = layer.endPoint
            strokeEndAnimation.toValue = strokeEndFinal
            strokeEndAnimation.autoreverses = false
            strokeEndAnimation.repeatCount = 0
            
        }
        
    }
   
}
