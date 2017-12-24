//
//  ViewController.swift
//  MyFinances
//
//  Created by Christopher Villanueva on 12/23/17.
//  Copyright © 2017 Christopher Villanueva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let moneyImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "money"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let descriptionTextView: UITextView = {
        let textView = UITextView()
        textView.text = "Manage your finances efficiently!"
        textView.font = UIFont.boldSystemFont(ofSize: 18)
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayout()
    }
    
    private func setupLayout(){
        
        view.addSubview(moneyImageView)
        view.addSubview(descriptionTextView)
        
        moneyImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        moneyImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        moneyImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        moneyImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        descriptionTextView.topAnchor.constraint(equalTo: moneyImageView.bottomAnchor, constant: 120).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    }

}











