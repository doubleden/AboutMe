//
//  DenViewController.swift
//  AboutMe
//
//  Created by Denis Denisov on 13/2/24.
//

import UIKit

class PersonViewController: UIViewController {
    
    @IBOutlet var denImage: UIImageView!
    @IBOutlet var rectangleView: UIView!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var activityLabel: UILabel!
    
    var name: String!
    var surname: String!
    var age: String!
    var activity: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        denImage.layer.cornerRadius = 15
        rectangleView.layer.cornerRadius = 15
        
        nameLabel.text = name
        surnameLabel.text = surname
        ageLabel.text = age
        activityLabel.text = activity
    }
    
}
