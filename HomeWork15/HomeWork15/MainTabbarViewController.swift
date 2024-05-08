//
//  MainTabbarViewController.swift
//  HomeWork15
//
//  Created by Aleksandr Moroshovskyi on 11.04.2024.
//

import UIKit

class MainTabbarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.backgroundColor = UIColor(white: 0.5, alpha: 0.5)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        /*
        ПИТАННЯ: Чи правильно створений цей класс UITabBarController?
                 UINavigationController-и в цьому місці треба підтягувати?
                 tabBarItem - якщо підставити у viewDidLoad класа, то додаток падає. Чому?
         */
        
        //WHITE
        let whiteNavigationController = UINavigationController()
        let whiteViewController = WhiteViewController()
        whiteViewController.tabBarItem.image = UIImage(systemName: "phone")
        whiteViewController.tabBarItem.selectedImage = UIImage(systemName: "phone.fill")
        whiteNavigationController.setViewControllers([whiteViewController], animated: false)
        
        //BROWN
        let brownNavigationController = UINavigationController()
        let brownViewController = BrownViewController()
        brownViewController.tabBarItem.image = UIImage(systemName: "message")
        brownViewController.tabBarItem.selectedImage = UIImage(systemName: "message.fill")
        brownNavigationController.setViewControllers([brownViewController], animated: false)
        
        //BLACK
        let blackNavigationController = UINavigationController()
        let blackViewController = BlackViewController()
        blackViewController.tabBarItem.image = UIImage(systemName: "star")
        blackViewController.tabBarItem.selectedImage = UIImage(systemName: "star.fill")
        blackNavigationController.setViewControllers([blackViewController], animated: false)

        setViewControllers([
            whiteNavigationController,
            brownNavigationController,
            blackNavigationController
        ], animated: true)
    }
}
