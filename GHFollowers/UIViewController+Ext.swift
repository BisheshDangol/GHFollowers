//
//  UIViewController+Ext.swift
//  GHFollowers
//
//  Created by Bishesh Dangol on 13/07/2025.
//

import UIKit

extension UIViewController {
    
    // Illegal to present UI element from the background thread
    func presentGFAlertOnMainThread(title: String, message: String, buttonTitle: String) {
        DispatchQueue.main.async {
            let alertVC = GFAlertVC(alertTitle: title, message: message, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .crossDissolve
            self.present(alertVC, animated: true)
        }
    }
}
