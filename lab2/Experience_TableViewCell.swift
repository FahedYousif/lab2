//
//  Experience_TableViewCell.swift
//  lab2
//
//  Created by Fahed Yousif on 2019-12-07.
//  Copyright © 2019 Fahed Yousif. All rights reserved.
//

import UIKit

class Experience_TableViewCell: UITableViewCell {

   @IBOutlet weak var cellLabel: UILabel!
        @IBOutlet weak var cellImage: UIImageView!
        
        override func awakeFromNib() {
            super.awakeFromNib()
            // Initialization code
        }

        override func setSelected(_ selected: Bool, animated: Bool) {
            super.setSelected(selected, animated: animated)
        }

    }
