//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Roman Dubovskoi on 7/14/24.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeTextLabel: UILabel!
    
    var user: User!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        welcomeTextLabel.text = "Welcome, \(user.login)\nMy name is \(user.person.name) \(user.person.lastName)!"
        
        view.backgroundColor = .systemMint
        
        setupTabBar()
    }

    
    // MARK: Methods
    
    private func setupTabBar() {
        guard let vcItem = tabBarController?.tabBar.items else { return }
        vcItem.first?.title = "Welcome"
        vcItem.last?.title = "\(user.person.name) \(user.person.lastName)"
    }
       
}
