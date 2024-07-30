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
    
    
    
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupImage()
        
        view.backgroundColor = .systemMint
        
        self.title = "\(user.person.name) \(user.person.lastName)"
        
        nameLabel.text = user.person.name
        lastNameLabel.text = user.person.lastName
        companyLabel.text = user.person.company
        departmentLabel.text = user.person.department
        postLabel.text = user.person.post
        
       
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let additionalVC = segue.destination as? AdditionalInfoViewController else {
            return
        }
        additionalVC.user = user
    }
    
    
    private func setupImage() {
        profileImage.image = UIImage(
            named: user.person.personImage
        )
        profileImage.contentMode = .scaleAspectFill
        profileImage.layer.cornerRadius = profileImage.frame.width / 2
        profileImage.layer.masksToBounds = true
    }
    
}

