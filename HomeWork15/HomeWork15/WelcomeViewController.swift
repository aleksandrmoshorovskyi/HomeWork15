//
//  WelcomeViewController.swift
//  HomeWork15
//
//  Created by Aleksandr Moroshovskyi on 11.04.2024.
//

import UIKit

class WelcomeViewController: UIViewController {

    var stackView: UIStackView!
    
    var signInBtn: UIButton!
    var signUpBtn: UIButton!
    var skipBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGray
        navigationItem.title = "Welcome"
        
        setUI()
        
        //для спадкування
        addAllSubview()
        setConstraints()
    }
    
    func setUI() {
        
        // MARK: - signInBtn config
        signInBtn = UIButton()
        //signInBtn.frame.size = CGSize(width: 150, height: 50)
        signInBtn.setTitle("SignIn", for: .normal)
        
        // MARK: - signUpBtn config
        signUpBtn = UIButton()
        //signUpBtn.frame.size = CGSize(width: 150, height: 50)
        signUpBtn.setTitle("SignUp", for: .normal)

        // MARK: - skipBtn config
        skipBtn = UIButton()
        //skipBtn.frame.size = CGSize(width: 150, height: 50)
        skipBtn.setTitle("Skip", for: .normal)
        
        // MARK: - addTargets
        signInBtn.addTarget(self, action: #selector(signInBtnClicked), for: .touchUpInside)
        signUpBtn.addTarget(self, action: #selector(signUpBtnClicked), for: .touchUpInside)
        skipBtn.addTarget(self, action: #selector(skipBtnClicked), for: .touchUpInside)
        
        // MARK: - stackView config
        stackView = UIStackView()
        stackView.axis = NSLayoutConstraint.Axis.vertical
        stackView.spacing = 30
        
        view.addSubview(stackView)
    }
    
    //для спадкування
    func addAllSubview() {
        stackView.addArrangedSubview(signInBtn)
        stackView.addArrangedSubview(signUpBtn)
        stackView.addArrangedSubview(skipBtn)
        
        view.addSubview(stackView)
    }
    
    func setConstraints() {
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            // MARK: - stackView
            stackView.centerXAnchor.constraint(
                equalTo: view.centerXAnchor
            ),
            stackView.centerYAnchor.constraint(
                equalTo: view.centerYAnchor
            )
        ])
    }
    
    @objc func signInBtnClicked() {
        
        print("signInBtnClicked")
        
        if let navigationController = navigationController {
            navigationController.setViewControllers([SignInViewController()], animated: true)
        }
    }
    
    @objc func signUpBtnClicked() {
        
        print("signUpBtnClicked")
        
        if let navigationController = navigationController {
            navigationController.setViewControllers([SignUpViewController()], animated: true)
        }
    }
    
    @objc func skipBtnClicked() {
        
        print("skipBtnClicked")
        
        if let navigationController = navigationController {
            navigationController.setViewControllers([MainTabbarViewController()], animated: true)
        }
    }
}
