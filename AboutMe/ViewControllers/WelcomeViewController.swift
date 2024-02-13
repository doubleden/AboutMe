//
//  UserViewController.swift
//  AboutMe
//
//  Created by Denis Denisov on 9/2/24.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var rectangleView: UIView!
    @IBOutlet var lexusImage: UIImageView!
    
    var username: String!
    
    override func viewDidLayoutSubviews() {
        makeCircle(for: rectangleView)
        welcomeLabel.text = "Welcome, \(username ?? "") !"
    }
}
