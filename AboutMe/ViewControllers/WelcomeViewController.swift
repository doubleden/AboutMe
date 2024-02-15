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
    @IBOutlet var mainImage: UIImageView!
    @IBOutlet var descriptionImageLabel: UILabel!
    
    var user: User!
    
    override func viewDidLayoutSubviews() {
        rectangleView.layer.cornerRadius = (rectangleView.frame.width) / 2
        
        welcomeLabel.text = "Welcome, \(user.username) !"
        greetingLabel.text = "Hi my name is \(user.person.name)!"
        
        mainImage.image = UIImage(named: user.person.welcomeImage)
        descriptionImageLabel.text = user.person.descriptionWelcomeImage
    }
}
