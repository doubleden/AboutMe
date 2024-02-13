//
//  LexViewController.swift
//  AboutMe
//
//  Created by Denis Denisov on 13/2/24.
//

import UIKit

class PetViewController: UIViewController {

    
    @IBOutlet var realLexusImage: UIImageView!
    @IBOutlet var rectangleView: UIView!
    @IBOutlet var characteristicLabel: UILabel!
    
    var characteristic: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        realLexusImage.layer.cornerRadius = 15
        rectangleView.layer.cornerRadius = 15
        
        
        characteristicLabel.text = characteristic
    }
}
