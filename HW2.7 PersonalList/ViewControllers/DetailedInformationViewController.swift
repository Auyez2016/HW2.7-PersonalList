//
//  DetailedInformationViewController.swift
//  HW2.7 PersonalList
//
//  Created by Auyez on 11/4/20.
//

import UIKit

class DetailedInformationViewController: UIViewController {
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneNumberLabel.text = person.phoneNumber
        emailLabel.text = person.email
        
        navigationItem.title = "\(person.name) \(person.surename)"
    }
    
}
