//
//  OnboardingViewController.swift
//  Bankey-Revision
//
//  Created by Mpilo Pillz on 2022/11/01.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    let stackView = UIStackView()
    let imageView = UIImageView()
    let label = UILabel()
    
    let heroImageName: String
    let titleText: String
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()

    
    }
    
    init(heroImageName: String, titleText: String) {
        self.heroImageName = heroImageName
        self.titleText = titleText
        
        // we not using story board nor nibs so should be null
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension OnboardingViewController {
    func style() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
        
        // Image
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: heroImageName)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.font = UIFont.preferredFont(forTextStyle: .title3)
        label.adjustsFontForContentSizeCategory = true
        label.numberOfLines = 0
        label.text = titleText
        
//        "Bankey is faster, easier to use, and has a brand new look and feel that will make you feel like you are back in 1989."
//        "delorean"
       
        
    }
    
    func layout() {
//         this phucked me up twice now reaaallll baaddddd
//        stackView.addSubview(imageView)
//        stackView.addSubview(label)
        
        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(label)
        
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 1)
        ])
    }
}