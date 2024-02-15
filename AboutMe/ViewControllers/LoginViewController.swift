//
//  ViewController.swift
//  AboutMe
//
//  Created by Denis Denisov on 9/2/24.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet var userTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let user = User.getUser()
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(
        withIdentifier identifier: String,
        sender: Any?
    ) -> Bool {
        guard userTextField.text == user.username
                , passwordTextField.text == user.password else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password") {
                    guard self.passwordTextField.text != "" else { return }
                    self.passwordTextField.text = ""
                }
            return false
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarVC = segue.destination as? UITabBarController
        
        tabBarVC?.viewControllers?.forEach { viewController in
            switch viewController {
            case let welcomeVC as WelcomeViewController:
                welcomeVC.user = user
            case let navigationVC as UINavigationController:
                if let personVC = navigationVC.topViewController as? PersonViewController {
                    personVC.user = user
                }
            case let petVC as PetViewController:
                petVC.user = user
            default:
                break
            }
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userTextField.text = ""
        passwordTextField.text = ""
    }
    
    @IBAction func forgotButtonsAction(_ sender: UIButton) {
        showAlert(
            withTitle: sender.tag == 0 
            ? "Correct login is User 😉" : "Correct password is 1111 🙈",
            andMessage: "Try Again!"
        )
    }
    
    private func showAlert(
        withTitle tittle: String,
        andMessage message: String,
        completion: (() -> Void)? = nil) {
        let alert = UIAlertController(
            title: tittle,
            message: message,
            preferredStyle: .alert
        )
        let okButton = UIAlertAction(title: "Ok", style: .default) { _ in
            completion?()
        }
        
        alert.addAction(okButton)
        present(alert, animated: true)
    }
}
