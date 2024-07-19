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
    
    private let userName = "Champ"
    private let password = "qwerty10"
    
    // MARK: Override Methods
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else {
            return
        }
        welcomeVC.userName = userName
    }
    
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTF.text == userName, passwordTF.text == password else {
            showAlert(title: "Ooops", message: "Double Check Your User Name Or Password")
            return false
        }
        return true
    }

    // MARK: IBActions
    @IBAction func forgotLoginDetails(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "HI👋🏻", message: "Your User Name is - \(userName)") {
            if self.userNameTF.text != self.userName {
                self.userNameTF.text = ""
            }
        }
        : showAlert(title: "HI👋🏻", message: "Your Password is - \(password)") {
            if self.passwordTF.text != self.password {
                self.passwordTF.text = ""
            }
        }
    }
    
    
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
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

