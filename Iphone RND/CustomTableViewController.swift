//
//  CustomTableViewController.swift
//  Iphone RND
//
//  Created by sibaprasad on 22/08/17.
//  Copyright © 2017 SP inc. All rights reserved.
//

import Foundation
import UIKit
class CustomTableViewController : BaseViewController,UITableViewDelegate,UITableViewDataSource{

    var list = ["bear","camel","goat","leopard","lion","panda","puppy","rabit","zebra","ziraf",]

    var animalImages: [UIImage] = [#imageLiteral(resourceName: "bear.jpeg"),#imageLiteral(resourceName: "camel.jpeg"),#imageLiteral(resourceName: "goat.jpeg"),#imageLiteral(resourceName: "leopard.jpg"),#imageLiteral(resourceName: "panda.jpg"),#imageLiteral(resourceName: "puppy.jpeg"),#imageLiteral(resourceName: "rabit.jpeg"),#imageLiteral(resourceName: "zebra.jpeg"),#imageLiteral(resourceName: "ziraf.jpeg")]
    
    override func viewDidLoad() {
        
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
    return list.count
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {

        
        let cellTable = tableView.dequeueReusableCell( withIdentifier: "cell", for: indexPath ) as!MyTableViewCell

       // cellTable.textTitle.text = "Sibaprasad Mohanty"
        
       // cellTable.title.text = "Sibaprasad Mohanty"// list[indexPath.row]
        
        
        return (cellTable)
    }
}
