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
    
    @IBOutlet weak var profileImage: UIImageView!
    
    
    
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "\(person.name) \(person.lastName)"
        
        nameLabel.text = person.name
        lastNameLabel.text = person.lastName
        companyLabel.text = person.company
        departmentLabel.text = person.department
        postLabel.text = person.post
        
//        setupImage()
    }
    
    override func viewWillLayoutSubviews() {
        setupImage()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let additionalVC = segue.destination as? AdditionalInfoViewController else {
            return
        }
        additionalVC.person = person
    }
    
    
    func setupImage() {
        profileImage.image = UIImage(
            named: "hulkImage"
        )
        profileImage.contentMode = .scaleAspectFill
        profileImage.layer.cornerRadius = profileImage.frame.width / 2
        profileImage.layer.masksToBounds = true
    }
    
}
