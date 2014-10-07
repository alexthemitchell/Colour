//
//  CLRlayer.swift
//  Colour
//
//  Created by Alex Mitchell on 10/7/14.
//  Copyright (c) 2014 Alex Mitchell. All rights reserved.
//

import UIKit

class CLRlayer: NSObject {
    var startPoint: Float
    var endPoint: Float
    var colour: UIColor
    var width: Float
    
    init(colour: UIColor, width: Float){
        startPoint = 0
        endPoint = 0
        self.colour = colour
        self.width = width
    }
   
}
