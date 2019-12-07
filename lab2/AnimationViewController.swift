//
//  AnimationViewController.swift
//  lab2
//
//  Created by Fahed Yousif on 2019-12-07.
//  Copyright © 2019 Fahed Yousif. All rights reserved.
//

import UIKit

class AnimationViewController: UIViewController {

     
        
        @IBOutlet weak var imageViewCV: UIImageView!
            var images: [UIImage] = []
            override func viewDidLoad() {
                super.viewDidLoad()
            
                images = [
                    UIImage(named: "ald1"),
                    UIImage(named: "ald2"),
                    UIImage(named: "ald3"),
                    UIImage(named: "ald4"),
                    UIImage(named: "ald5"),
                    UIImage(named: "ald6"),
                    UIImage(named: "ald7"),
                    UIImage(named: "ald8"),
                    UIImage(named: "ald9"),
                    UIImage(named: "ald10"),
                    UIImage(named: "ald11"),
                    UIImage(named: "ald12"),
                    UIImage(named: "ald13"),
                    UIImage(named: "ald14"),
                    UIImage(named: "ald15"),
                    UIImage(named: "ald16"),
                    UIImage(named: "ald17"),
                    UIImage(named: "ald18"),
                    UIImage(named: "ald19"),
                    UIImage(named: "ald20"),
                    UIImage(named: "ald21"),
                    UIImage(named: "ald22"),
                    UIImage(named: "ald23"),
                    UIImage(named: "ald24")
                ] as! [UIImage]
                imageViewCV.animationImages = images
                imageViewCV.animationDuration = 1
                imageViewCV.startAnimating()
                /*for index in 1...24{
                    x:String = "ald\(String(index)"
                    images.append(UIImage(named: "animation/ald\(index)) ?? default nil)
                }*/
                
            }

        }
