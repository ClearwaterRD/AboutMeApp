//
//  BioViewController.swift
//  AboutMeApp
//
//  Created by Roman Dubovskoi on 7/25/24.
//

import UIKit

final class BioViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var departmentLabel: UILabel!
    @IBOutlet weak var postLabel: UILabel!
    
    
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = person.name + person.lastName
        
        nameLabel.text = person.name
        lastNameLabel.text = person.lastName
        companyLabel.text = person.company
        departmentLabel.text = person.department
        postLabel.text = person.post
    }
    

}
