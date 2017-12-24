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
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let descriptionTextView: UITextView = {
        let textView = UITextView()
        let attributedText = NSMutableAttributedString(string: "Manage your finances efficiently!", attributes: [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 18)])
        
        attributedText.append(NSAttributedString(string: "\n\n\nAre you ready to begin manage the flow your money, analyze your tendencies, and more?", attributes: [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 14), NSAttributedStringKey.foregroundColor: UIColor.gray]))

        textView.attributedText = attributedText
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    let topImageContainerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    /*
     Application loads here
    */
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayout()
    }
    
    /*
     private func setupLayout:
        Add the subviews for our UI and
        Use auto layout to add constraints in order
        to format the UI as desired
    */
    private func setupLayout(){
        
        view.addSubview(descriptionTextView)
        view.addSubview(topImageContainerView)
        topImageContainerView.addSubview(moneyImageView)
        
        topImageContainerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        topImageContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topImageContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        topImageContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        
        moneyImageView.centerXAnchor.constraint(equalTo: topImageContainerView.centerXAnchor).isActive = true
        moneyImageView.centerYAnchor.constraint(equalTo: topImageContainerView.centerYAnchor).isActive = true
        moneyImageView.heightAnchor.constraint(equalTo: topImageContainerView.heightAnchor, multiplier: 0.5).isActive = true
        
        descriptionTextView.topAnchor.constraint(equalTo: topImageContainerView.bottomAnchor).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
    }

}











