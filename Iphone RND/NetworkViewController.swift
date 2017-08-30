//
//  NetworkViewController.swift
//  Iphone RND
//
//  Created by sibaprasad on 30/08/17.
//  Copyright © 2017 SP inc. All rights reserved.
//

import Foundation
import UIKit
import  Alamofire

class NetworkViewController: BaseViewController {
    
    @IBOutlet var tableNetwork: UITableView!
    
    
    let activityIndicator = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.whiteLarge)
    
    var commonutility = CommonUtility()
    var progressHud : ProgressHUD!
    var myActivityIndicator: UIActivityIndicatorView!
    
    var array = ["STradasda"]
    var arrRes = [[String:AnyObject]]() //Array of dictionary

    
    override func viewDidLoad() {
        
    }
    override func viewWillDisappear(_ animated: Bool) {
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    func doNetworkCall(url:String)  {
        
        self.activityIndicator.startAnimating()
        
        Alamofire.request("http://api.androidhive.info/contacts/").responseJSON { (responseData) -> Void in
            if((responseData.result.value) != nil) {
                
                print("Result ",responseData.result.value)
                
//                let swiftyJsonVar = JSON(responseData.result.value!)
//                
//                if let resData = swiftyJsonVar["contacts"].arrayObject {
//                    self.arrRes = resData as! [[String:AnyObject]]
//                }
//                if self.arrRes.count > 0 {
//                    self.netTableView.reloadData()
//                }
                self.activityIndicator.stopAnimating()
                self.progressHud.hide()
            }
        }
    }
}
