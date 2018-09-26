//
//  ViewController.swift
//  Extended
//
//  Created by amirshayegh on 09/19/2018.
//  Copyright (c) 2018 amirshayegh. All rights reserved.
//

import UIKit
import Extended

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let c1 = UIColor(hex: "FFFFF")
        var string1 = "HelloWorld"
        string1 = string1.convertFromCamelCase()
        print(string1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

