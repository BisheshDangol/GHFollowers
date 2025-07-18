//
//  GFTextField.swift
//  GHFollowers
//
//  Created by Avanish Shrestha on 10/07/2025.
//

import UIKit

class GFTextField: UITextField {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius = 10
        layer.borderWidth = 2
        
//      for layer > borderColor need to use core graphics color
        layer.borderColor = UIColor.systemGray4.cgColor
        
//      black in dark mode and white in light mode
        textColor = .label
        tintColor = .label
        textAlignment = .center
        font = UIFont.preferredFont(forTextStyle: .title2)
        adjustsFontSizeToFitWidth = true
        minimumFontSize = 12
        backgroundColor = .tertiarySystemBackground
        autocorrectionType = .no
        returnKeyType = .go
       
        placeholder = "Enter your username"
    }
}
