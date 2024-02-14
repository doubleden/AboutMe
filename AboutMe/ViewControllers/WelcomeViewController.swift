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
    
    var username: String!
    var personName: String!
    var photo: String!
    var descriptionImage: String!
    
    override func viewDidLayoutSubviews() {
        rectangleView.layer.cornerRadius = (rectangleView.frame.width) / 2
        
        welcomeLabel.text = "Welcome, \(username ?? "") !"
        greetingLabel.text = "Hi my name is \(personName ?? "")!"
        
        mainImage.image = UIImage(named: photo)
        descriptionImageLabel.text = descriptionImage
    }
}
