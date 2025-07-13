//
//  FollowerListVC.swift
//  GHFollowers
//
//  Created by Bishesh Dangol on 13/07/2025.
//

import UIKit

class FollowerListVC: UIViewController {
    
    var username: String!

    override func viewDidLoad() {
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}
