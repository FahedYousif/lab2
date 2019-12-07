//
//  showExperienceViewController.swift
//  lab2
//
//  Created by Fahed Yousif on 2019-12-07.
//  Copyright © 2019 Fahed Yousif. All rights reserved.
//

import UIKit

class showExperienceViewController: UIViewController {

        @IBOutlet weak var ExperienceImage: UIImageView!
        @IBOutlet weak var ExperienceTitle: UILabel!
        @IBOutlet weak var ExperienceTextField: UILabel!
        
        var edu: Education = Education(imageName:"",name:"",text:"")
        var work: Work_Experience = Work_Experience(imageName:"",name:"",text:"")
        
        override func viewDidLoad() {
            super.viewDidLoad()
            if(edu.name != ""){
                ExperienceImage.image = UIImage(named: edu.imageName)
                ExperienceTitle.text = edu.name
                ExperienceTextField.text = edu.text
            }else{
                ExperienceImage.image = UIImage(named: work.imageName)
                ExperienceTitle.text = work.name
                ExperienceTextField.text = work.text
            }
        }
        



    }
