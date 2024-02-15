//
//  DenViewController.swift
//  AboutMe
//
//  Created by Denis Denisov on 13/2/24.
//

import UIKit

final class PersonViewController: UIViewController {
    
    @IBOutlet var rectangleView: UIView!
    @IBOutlet var mainImage: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var activityLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainImage.layer.cornerRadius = 15
        rectangleView.layer.cornerRadius = 15
        
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        ageLabel.text = user.person.age
        mainImage.image = UIImage(named: user.person.photo)
        activityLabel.text = user.person.activity
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let personBiographyVC = segue.destination as? PersonBiographyViewController {
            personBiographyVC.biography = user.person.biography
        }
    }
}
