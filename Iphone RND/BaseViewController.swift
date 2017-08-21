//
//  BaseViewController.swift
//  Iphone RND
//
//  Created by sibaprasad on 08/08/17.
//  Copyright © 2017 SP inc. All rights reserved.
//

import Foundation
import UIKit
class BaseViewController : UIViewController{
    
    func showProgressDialog(_ message : String){
        var progressHud : ProgressHUD!
        progressHud  = ProgressHUD(text: message)
        self.view.addSubview(progressHud)
    }
    
    
    func showAlert(_ title :String,msg :String,isShowCancel : Bool) {
        let refreshAlert = UIAlertController(title: title, message: msg, preferredStyle: UIAlertControllerStyle.alert)
        
        refreshAlert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (action: UIAlertAction!) in
            print("Handle Ok logic here")
        }))
        if isShowCancel {
            refreshAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (action: UIAlertAction!) in
                print("Handle Cancel Logic here")
            }))
        }
        
        present(refreshAlert, animated: true, completion: nil)
    }
    
    
    
}
