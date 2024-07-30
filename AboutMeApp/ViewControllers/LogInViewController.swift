//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Roman Dubovskoi on 7/14/24.
//

import UIKit

final class LogInViewController: UIViewController {
    // MARK: Outlets & Properties
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    private let user = User.getUserInfo()
   
    
    
    // MARK: Override Methods
    override func viewDidLoad() {
        userNameTF.text = user.login
        passwordTF.text = user.password
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarVC = segue.destination as? UITabBarController
        
        tabBarVC?.viewControllers?.forEach {  viewController in
            if let welcomeVc = viewController as? WelcomeViewController  {
                welcomeVc.user = user
                
            } else if let navigationVC = viewController as? UINavigationController {
                let bioVC = navigationVC.topViewController as? BioViewController
                bioVC?.user = user
    
            }
        }
        
    }
        
    
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTF.text == user.login, passwordTF.text == user.password else {
            showAlert(title: "Ooops", message: "Double Check Your User Name Or Password")
            return false
        }
        return true
    }

    // MARK: IBActions
    @IBAction func forgotLoginDetails(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "HI👋🏻", message: "Your User Name is - \(user.login)") {
            if self.userNameTF.text != self.user.login {
                self.userNameTF.text = ""
            }
        }
        : showAlert(title: "HI👋🏻", message: "Your Password is - \(user.password)") {
            if self.passwordTF.text != self.user.password {
                self.passwordTF.text = ""
            }
        }
    }
    
    
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = user.login
        passwordTF.text = user.password
    }
    
    // MARK: Methods
    func showAlert(title: String, message: String, completion: (() -> Void)? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default) { _ in
            completion?()
        }
        alert.addAction(action)
        present(alert, animated: true)
    }
   
  
}

