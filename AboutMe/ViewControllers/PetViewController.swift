//
//  LexViewController.swift
//  AboutMe
//
//  Created by Denis Denisov on 13/2/24.
//

import UIKit

final class PetViewController: UIViewController {

    @IBOutlet var petImage: UIImageView!
    @IBOutlet var rectangleView: UIView!
    @IBOutlet var characteristicLabel: UILabel!
    
    var characteristic: String!
    var photo: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        petImage.layer.cornerRadius = 15
        rectangleView.layer.cornerRadius = 15
        
        petImage.image = UIImage(named: photo)
        characteristicLabel.text = characteristic
    }
}
