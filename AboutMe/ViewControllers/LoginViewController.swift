//
//  ViewController.swift
//  AboutMe
//
//  Created by Denis Denisov on 9/2/24.
//

import UIKit

final class LoginViewController: UIViewController {
    
    private let user = User.getUser()
    
    @IBOutlet var userTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
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
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.username = user.username
                welcomeVC.person = user.person.name
                welcomeVC.photo = user.welcomeImage
                welcomeVC.descriptionImage = user.descriptionImage
            } else if let navigationVC = viewController as? PersonNavigationViewController {
                if let personVC = navigationVC.topViewController as? PersonViewController {
                    personVC.name = user.person.name
                    personVC.surname = user.person.surname
                    personVC.age = user.person.age
                    personVC.picture = user.person.photo
                    personVC.activity = user.person.activity
                    personVC.biography = user.person.biography
                }
            } else if let petVC = viewController as? PetViewController {
                petVC.picture = user.pet.photo
                petVC.characteristic = user.pet.characteristic
            }
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userTextField.text = ""
        passwordTextField.text = ""
    }
    
    @IBAction func forgotButtonsAction(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(withTitle: "Correct login is Alexei 😉",andMessage: "Try Again!")
        : showAlert(withTitle: "Correct password is 1111 🙈",andMessage: "Try Again!")
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

extension UIViewController {
    func makeCircle(for rectangle: UIView) {
        rectangle.layer.cornerRadius = (rectangle.frame.width) / 2
    }
}
