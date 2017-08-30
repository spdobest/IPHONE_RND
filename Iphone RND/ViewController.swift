//
//  ViewController.swift
//  Iphone RND
//
//  Created by sibaprasad on 08/08/17.
//  Copyright © 2017 SP inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var btnLogin: UIButton!
    @IBOutlet var btnRegister: UIButton!
    @IBOutlet var btnList: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        btnLogin.layer.cornerRadius = 10
        btnLogin.clipsToBounds = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

