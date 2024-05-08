//
//  SignInViewController.swift
//  HomeWork15
//
//  Created by Aleksandr Moroshovskyi on 11.04.2024.
//

import UIKit

class SignInViewController: WelcomeViewController {
    
    var emailTextField: UITextField!
    var passwordTextField: UITextField!    
    var goButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "SignIn"
        view.backgroundColor = .lightGray
        
        setUI()
    }
    
    override func setUI() {
        super.setUI()
        
        emailTextField = UITextField()
        emailTextField.placeholder = "email"
        emailTextField.backgroundColor = .white
        
        passwordTextField = UITextField()
        passwordTextField.placeholder = "password"
        passwordTextField.backgroundColor = .white
        
        goButton = UIButton()
        goButton.setTitle("Go", for: .normal)
        goButton.backgroundColor = .blue
        goButton.addTarget(self, action: #selector(skipBtnClicked), for: .touchUpInside)
    }

    override func addAllSubview() {
        stackView.addArrangedSubview(emailTextField)
        stackView.addArrangedSubview(passwordTextField)
        stackView.addArrangedSubview(goButton)
    }
}
