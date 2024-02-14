//
//  UserViewController.swift
//  AboutMe
//
//  Created by Denis Denisov on 9/2/24.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var greetingLabel: UILabel!
    
    @IBOutlet var rectangleView: UIView!
    @IBOutlet var welcomeImage: UIImageView!
    
    var username: String!
    var person: String!
    var photo: String!
    
    override func viewDidLayoutSubviews() {
        makeCircle(for: rectangleView)
        welcomeLabel.text = "Welcome, \(username ?? "") !"
        greetingLabel.text = "Hi my name is \(person ?? "")!"
        welcomeImage.image = UIImage(named: photo)
    }
}
