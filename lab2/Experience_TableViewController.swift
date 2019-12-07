//
//  Experience_TableTableViewController.swift
//  lab2
//
//  Created by Fahed Yousif on 2019-12-07.
//  Copyright © 2019 Fahed Yousif. All rights reserved.
//

import UIKit

var educationList:[Education] = []
var workExperienceList:[Work_Experience] = []

class Experience_TableViewController: UITableViewController {

   override func viewDidLoad() {
            super.viewDidLoad()
            tableView.tableFooterView = UIView()
            //MARK: - set up lists for experience
            educationList = [
                
                Education(imageName:"JU",name:"Jönköping University dmp",text:"Jönköping University dmp datateknisk mjukvaru utveckling och mobila plattformar 2017 - pågående")
            ]
            
            workExperienceList = [
                Work_Experience(imageName:"ikea",name:"Ikea",text:"I am working at Ikeas warehouses"),
                Work_Experience(imageName: "arla", name: "arla", text: "I am working at Arlas warehouses"),
            ]
            
            //MARK: - set up segue
           
        }
        
        // MARK: - Table view data source
        override func numberOfSections(in tableView: UITableView) -> Int {
            return 2
        }

        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            if(section == 0){
                return workExperienceList.count
            }else{
                return educationList.count
            }
        }

        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "ExperienceCell") as? Experience_TableViewCell{
                if(indexPath.section == 0){
                    let cellinfo = workExperienceList[indexPath.row]
                    cell.cellImage.image = UIImage(named: cellinfo.imageName)
                    cell.cellLabel.text = cellinfo.name
                }else{
                    let cellinfo = educationList[indexPath.row]
                    cell.cellImage.image = UIImage(named: cellinfo.imageName)
                    cell.cellLabel.text = cellinfo.name
                }
                return cell
            }else{
                return UITableViewCell()
            }
        }
        
        override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            switch(section) {
            case 0:
                return "Work Experience"
            case 1:
                return "Education"
            default:
                return ""
            }
        }

        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let destination = segue.destination as? showExperienceViewController {
                if let indexPath = sender as? IndexPath {
                    if(indexPath.section == 0){
                        let exp = workExperienceList[indexPath.row]
                        destination.work = exp
                    }else{
                        let exp = educationList[indexPath.row]
                        destination.edu = exp
                    }
                }
            }
        }
        
        override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            performSegue(withIdentifier: "segue", sender: indexPath)
        }
    }
