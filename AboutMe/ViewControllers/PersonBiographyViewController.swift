//
//  PersonBiographyViewController.swift
//  AboutMe
//
//  Created by Denis Denisov on 13/2/24.
//

import UIKit

class PersonBiographyViewController: UIViewController {

    @IBOutlet var biographyLabel: UILabel!
    
    var biography: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        biographyLabel.text = biography
    }
    
}
