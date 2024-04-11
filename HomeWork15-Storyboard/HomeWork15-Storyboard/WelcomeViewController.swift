//
//  WelcomeViewController.swift
//  HomeWork15-Storyboard
//
//  Created by Aleksandr Moroshovskyi on 11.04.2024.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBAction func SignInBtnClicked(_ sender: UIButton) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let signInViewController = storyboard.instantiateViewController(identifier: "SignInViewController")
        
        navigationController?.setViewControllers([signInViewController], animated: true)
    }
    
    @IBAction func SignUpBtnClicked(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let signUpViewController = storyboard.instantiateViewController(identifier: "SignUpViewController")
        
        navigationController?.setViewControllers([signUpViewController], animated: true)
    }
    
    @IBAction func SkipBtnClicked(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let mainTabbarViewController = storyboard.instantiateViewController(identifier: "MainTabbarViewController")
        
        navigationController?.setViewControllers([mainTabbarViewController], animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
