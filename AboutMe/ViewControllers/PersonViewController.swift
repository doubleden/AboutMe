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
    
    var picture: String!
    var name: String!
    var surname: String!
    var age: String!
    
    var activity: String!
    var biography: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainImage.layer.cornerRadius = 15
        rectangleView.layer.cornerRadius = 15
        
        nameLabel.text = name
        surnameLabel.text = surname
        ageLabel.text = age
        mainImage.image = UIImage(named: picture)
        activityLabel.text = activity
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let personBiographyVC = segue.destination as? PersonBiographyViewController {
            personBiographyVC.biography = biography
        }
    }
}
