//
//  LexViewController.swift
//  AboutMe
//
//  Created by Denis Denisov on 13/2/24.
//

import UIKit

final class PetViewController: UIViewController {

    @IBOutlet var rectangleView: UIView!
    @IBOutlet var mainImage: UIImageView!
    @IBOutlet var characteristicLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainImage.layer.cornerRadius = 15
        rectangleView.layer.cornerRadius = 15
        
        mainImage.image = UIImage(named: user.person.pet.photo)
        characteristicLabel.text = user.person.pet.characteristic
    }
}
