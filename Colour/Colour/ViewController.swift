//
//  ViewController.swift
//  Colour
//
//  Created by Alex Mitchell on 10/7/14.
//  Copyright (c) 2014 Alex mitchell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userCircle: CLRbase!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        userCircle.redrawView()
        // Dispose of any resources that can be recreated.
    }


}

