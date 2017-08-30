//
//  LoginVc.swift
//  Iphone RND
//
//  Created by sibaprasad on 30/08/17.
//  Copyright © 2017 SP inc. All rights reserved.
//

import Foundation
import UIKit
class LoginVc : UIViewController {

    @IBOutlet var emailid: UITextField!
    @IBOutlet var password: UITextField!
    @IBOutlet var btnLogin: UIButton!
    
    override func viewDidAppear(_ animated: Bool){
        
    }
    override func viewDidLoad() {
        emailid.layer.cornerRadius = 10
        emailid.clipsToBounds = true
        
        password.layer.cornerRadius = 10
        password.clipsToBounds = true
        
        btnLogin.layer.cornerRadius = 10
        btnLogin.clipsToBounds = true
    }
}
