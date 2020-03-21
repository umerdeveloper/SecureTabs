//
//  LoginViewController.swift
//  SecureTabs
//
//  Created by Umer Khan on 21/03/2020.
//  Copyright © 2020 Umer Khan. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func closeWindowPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
