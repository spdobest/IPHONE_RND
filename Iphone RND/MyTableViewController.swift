//
//  MyTableViewController.swift
//  Iphone RND
//
//  Created by sibaprasad on 21/08/17.
//  Copyright © 2017 SP inc. All rights reserved.
//

import Foundation

import UIKit
import Alamofire
class MyTableViewController : BaseViewController,UITableViewDelegate,UITableViewDataSource{
    
    var myIndex = 0
    let list = ["Milk","Honey","Bread","Egg","Banana","Apple","Orange","Grapes","Biscuits","Milk","Honey","Bread","Egg","Banana","Apple","Orange","Grapes","Biscuits"]
    
    @IBOutlet var imageSample: UIImageView!
    
    var myUrl = "http://microblogging.wingnity.com/JSONParsingTutorial/jsonActors"
    
    override func viewDidLoad() {
        loadHappyHourElements()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    override func didReceiveMemoryWarning() {
        
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
    return list.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style: UITableViewCellStyle.default,reuseIdentifier: "cell")
        
        cell.textLabel?.text = list[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    func loadHappyHourElements(){
        Alamofire.request("http://api.androidhive.info/contacts/").responseData { (resData) -> Void in
            print(resData.result.value!)
            let strOutput = String(data : resData.result.value!, encoding : String.Encoding.utf8)
            print(strOutput)
        }
    }

}



