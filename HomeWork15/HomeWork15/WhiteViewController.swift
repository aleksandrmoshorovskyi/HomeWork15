//
//  WhiteViewController.swift
//  HomeWork15
//
//  Created by Aleksandr Moroshovskyi on 11.04.2024.
//

import UIKit

class WhiteViewController: UIViewController {
    
    var pushBtn: UIButton!
    var secondViewController: UIViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //для наслідування
        secondViewController = YellowViewController()
        
        setUI()
    }
    
    //func setBackgroundColor() - для наслідування
    //ПИТАННЯ: Як можна трекати кольор StatusBar?
    func setBackgroundColor() {
        
        view.backgroundColor = .white
    }
    
    func setUI() {
        
        setBackgroundColor()
        
        pushBtn = UIButton()
        pushBtn.setTitle("->", for: .normal)
        
        if view.backgroundColor == .white {
            pushBtn.setTitleColor(.black, for: .normal)
        } else {
            pushBtn.setTitleColor(.white, for: .normal)
        }
        
        pushBtn.addTarget(self, action: #selector(push), for: .touchUpInside)
        view.addSubview(pushBtn)
        
        setConstraints()
    }
    
    func setConstraints() {
        
        pushBtn.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            pushBtn.centerYAnchor.constraint(
                equalTo: view.centerYAnchor
            ),
            pushBtn.leadingAnchor.constraint(greaterThanOrEqualTo: view.leadingAnchor, constant: 20),
            pushBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
    
    @objc private func push() {
        
        if let navigationController = navigationController {
            navigationController.pushViewController(secondViewController, animated: true)
        }
    }
}
