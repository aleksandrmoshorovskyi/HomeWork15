//
//  SignInViewController.swift
//  HomeWork15-Storyboard
//
//  Created by Aleksandr Moroshovskyi on 11.04.2024.
//

import UIKit

class SignInViewController: UIViewController {

    @IBAction func goBTN(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let mainTabbarViewController = storyboard.instantiateViewController(identifier: "MainTabbarViewController")
        
        navigationController?.setViewControllers([mainTabbarViewController], animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "SignIn"
    }
}
