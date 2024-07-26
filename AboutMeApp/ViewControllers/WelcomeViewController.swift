//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Roman Dubovskoi on 7/14/24.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeTextLabel: UILabel!
    
    var userName: String!
    var person: Person!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        welcomeTextLabel.text = "Welcome, \(userName ?? "")\nMy name is \(person.name) \(person.lastName)!"
        
        view.backgroundColor = .systemMint
        
        setupTabBar()
    }

    
    // MARK: Methods
    
    func setupTabBar() {
        if let tabBarController = self.tabBarController {
            if let firstItem = tabBarController.tabBar.items?[0] {
                firstItem.title = "Welcome"
            }
            
            if let secondItem = tabBarController.tabBar.items?[1] {
                secondItem.title = person.name + person.lastName
            }
        }
    }
       
}
