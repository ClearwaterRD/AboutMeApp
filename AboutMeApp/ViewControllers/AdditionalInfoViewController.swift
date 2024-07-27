//
//  AdditionalInfoViewController.swift
//  AboutMeApp
//
//  Created by Roman Dubovskoi on 7/25/24.
//

import UIKit

final class AdditionalInfoViewController: UIViewController {
    @IBOutlet weak var infoLabel: UILabel!
    
    var person: Person!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        infoLabel.text = person.additionalInfo
        
    }
    

   

}
