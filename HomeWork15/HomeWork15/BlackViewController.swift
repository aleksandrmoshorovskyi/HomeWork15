//
//  BlackViewController.swift
//  HomeWork15
//
//  Created by Aleksandr Moroshovskyi on 11.04.2024.
//

import UIKit

class BlackViewController: WhiteViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //для наслідування
        secondViewController = GreenViewController()
    }
    
    override func setBackgroundColor() {
        view.backgroundColor = .black
    }
}

