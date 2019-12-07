//
//  ViewController.swift
//  lab2
//
//  Created by Fahed Yousif on 2019-12-07.
//  Copyright © 2019 Fahed Yousif. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
        @IBOutlet weak var profilepic: UIImageView!
        @IBOutlet weak var buttonDesigns: UIButton!
        @IBOutlet weak var buttonsDesigns2: UIButton!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            self.profilepic.layer.cornerRadius = self.profilepic.frame.size.width/2;
            buttonDesigns.layer.cornerRadius = 10;
            buttonsDesigns2.layer.cornerRadius = 10;
            // Do any additional setup after loading the view, typically from a nib.
        }
    }
