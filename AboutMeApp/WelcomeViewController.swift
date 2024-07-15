//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Roman Dubovskoi on 7/14/24.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeTextLabel: UILabel!
    
    var userName: String!

    override func viewDidLoad() {
        super.viewDidLoad()

        welcomeTextLabel.text = "Welcome, \(userName ?? "")!"
        
        view.backgroundColor = .systemMint
    }

    @IBAction func logOutButtonDidTapped() {
    }
    
    
}
