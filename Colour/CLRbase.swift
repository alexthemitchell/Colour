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
    var width: Float
    var track: UIBezierPath
    var backgroundLayer: CAShapeLayer

    required init(coder aDecoder: NSCoder) {
        colour = UIColor.grayColor()
        layers = [CLRlayer]()
        width = 10
        backgroundLayer = CAShapeLayer()
        track = UIBezierPath()
        super.init(coder: aDecoder)
        resetTrack()
    }
    
    func resetTrack(){
        //Re-create track
        var arcCenter = CGPointMake(CGRectGetMidY(self.bounds), CGRectGetMidX(self.bounds))
        var radius = CGRectGetMidX(self.bounds)
        self.track = UIBezierPath(
            arcCenter: arcCenter,
            radius: radius,
            startAngle: CGFloat(M_PI_2),
            endAngle: CGFloat(5*M_PI_2),
            clockwise: true)
        
        //reset base layer
        backgroundLayer = CLRlayer(colour: colour, path: track, strokeWidth: width);
        self.layer.sublayers = []
        self.layer.addSublayer(backgroundLayer)
    }
    
    func redrawView(){
        self.layer.sublayers = []
        
        for layer in self.layers {
            self.layer.addSublayer(layer)
        }
    }
    
    func addColourLayer(colour: UIColor){
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        addColourLayer(UIColor.redColor())
    }
    
    override func touchesEnded(touches: NSSet, withEvent event: UIEvent) {
    }
    
    func updateAnimations(){    }
    
}
