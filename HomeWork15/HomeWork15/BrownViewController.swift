//
//  BrownViewController.swift
//  HomeWork15
//
//  Created by Aleksandr Moroshovskyi on 11.04.2024.
//

import UIKit

class BrownViewController: WhiteViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //для наслідування
        secondViewController = RedViewController()
    }
    
    override func setBackgroundColor() {
        view.backgroundColor = .brown
    }
}
