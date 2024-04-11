//
//  SignUpViewController.swift
//  HomeWork15
//
//  Created by Aleksandr Moroshovskyi on 11.04.2024.
//

import UIKit

class SignUpViewController: SignInViewController {
    
    var confirmPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "SignUp"
    }
    
    override func setUI() {
        super.setUI()
        
        confirmPasswordTextField = UITextField()
        confirmPasswordTextField.placeholder = "confirm password"
        confirmPasswordTextField.backgroundColor = .white
    }
    
    override func addAllSubview() {
        stackView.addArrangedSubview(emailTextField)
        stackView.addArrangedSubview(passwordTextField)
        stackView.addArrangedSubview(confirmPasswordTextField)
        stackView.addArrangedSubview(goButton)
    }
}
