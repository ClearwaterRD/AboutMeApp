//
//  AdditionalInfoViewController.swift
//  AboutMeApp
//
//  Created by Roman Dubovskoi on 7/25/24.
//

import UIKit

final class AdditionalInfoViewController: UIViewController {
    @IBOutlet weak var infoLabel: UILabel!
    
    var user: User!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        infoLabel.textColor = .white
        infoLabel.text = user.person.additionalInfo
        
        navigationController?.navigationBar.tintColor = UIColor.white
    }
    
}

