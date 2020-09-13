//
//  SecondViewController.swift
//  Пасхалия
//
//  Created by Ruslan Ivanov on 08.09.2020.
//  Copyright © 2020 Ruslan Ivanov. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet var easterLabel: UILabel!
    @IBOutlet var backButton: UIButton!
    
    var dateOfEaster: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        easterLabel.text = dateOfEaster
        easterLabel.lineBreakMode = .byWordWrapping
        easterLabel.numberOfLines = 0
        
        backButton.layer.borderWidth = 3
        backButton.layer.cornerRadius = 10
    }
}
