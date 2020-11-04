//
//  DetailedPersonListTableViewController.swift
//  HW2.7 PersonalList
//
//  Created by Auyez on 11/4/20.
//

import UIKit

class DetailedPersonListTableViewController: UITableViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        personList.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    private var section = 0
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailsLabel", for: indexPath)
        
        if indexPath.row == 0 {
            cell.textLabel?.text = personList[indexPath.section].phoneNumber
        } else {
            cell.textLabel?.text = personList[indexPath.section].email
            cell.textLabel?.textColor = UIColor.blue
            
        }
        
        return cell
    }


    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "\(personList[section].name) \(personList[section].surename)"
    }
    
}

