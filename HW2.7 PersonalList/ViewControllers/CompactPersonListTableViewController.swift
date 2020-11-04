//
//  CompactPersonListTableViewController.swift
//  HW2.7 PersonalList
//
//  Created by Auyez on 11/4/20.
//

import UIKit

class CompactPersonListTableViewController: UITableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fullnameLabel", for: indexPath)

        cell.textLabel?.text = "\(personList[indexPath.row].name) \(personList[indexPath.row].surename)"

        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailedInfoVC = segue.destination as! DetailedInformationViewController
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
    
        detailedInfoVC.person = personList[indexPath.row]
    }
    

}

