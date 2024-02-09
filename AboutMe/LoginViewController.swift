//
//  ViewController.swift
//  AboutMe
//
//  Created by Denis Denisov on 9/2/24.
//

import UIKit

final class LoginViewController: UIViewController {

    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let login = "user"
    private let password = "1111"
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    override func shouldPerformSegue(
        withIdentifier identifier: String,
        sender: Any?
    ) -> Bool {
        guard loginTextField.text?.lowercased() == login, 
                passwordTextField.text == password else {
            showAlert(
                withTitle: "Invalid login or password ",
                andMessage: "Please, enter correct login and password"
            )
            return false
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let userCV = segue.destination as? UserViewController
        userCV?.userName = loginTextField.text
    }
    
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        loginTextField.text = ""
        passwordTextField.text = ""
    }
    
    private func showAlert(withTitle tittle: String, andMessage message: String) {
        let alert = UIAlertController(title: tittle, message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "Ok", style: .default) { _ in
            self.loginTextField.text = ""
            self.passwordTextField.text = ""
        }
        
        alert.addAction(okButton)
        present(alert, animated: true)
    }
}

