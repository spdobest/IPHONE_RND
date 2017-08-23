//
//  CustomTableVc.swift
//  Iphone RND
//
//  Created by sibaprasad on 23/08/17.
//  Copyright © 2017 SP inc. All rights reserved.
//

import Foundation
import UIKit

class AnimalListVC : UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet var tableview: UITableView!
    
    var animalNames = ["Bear","Camel","Goat","Leopard","Lion","Panda","Pupy","Rabit","Zebra","Ziraf"]
    var animalDesc = ["Bear","Camel","Goat","Leopard","Lion","Panda","Pupy","Rabit","Zebra","Ziraf"]
    
    let images = ["bear.jpeg","camel.jpeg","goat.jpeg","leopard.jpg","lion.jpg","panda.jpg","puppy.jpeg","rabit.jpeg","zebra.jpeg","ziraf.jpeg"]

    var imageArray = [UIImage]()
    
    override func viewDidLoad() {
        imageArray = [#imageLiteral(resourceName: "bear.jpeg"),#imageLiteral(resourceName: "camel.jpeg"),#imageLiteral(resourceName: "goat.jpeg"),#imageLiteral(resourceName: "leopard.jpg"),#imageLiteral(resourceName: "lion.jpg"),#imageLiteral(resourceName: "panda.jpg"),#imageLiteral(resourceName: "puppy.jpeg"),#imageLiteral(resourceName: "rabit.jpeg"),#imageLiteral(resourceName: "zebra.jpeg"),#imageLiteral(resourceName: "ziraf.jpeg")]
    }
    override func didReceiveMemoryWarning() {
        
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
    return animalNames.count
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
    let cell = self.tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath)   as! TableViewCellAnimal
        
        cell.labelAnimalName.text = animalNames[indexPath.row]
        
//        cell.imageAnimal = images[indexPath.row]
        
        cell.imageAnimal.image = imageArray[indexPath.row]

        return cell;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name:"Main",bundle:nil)
        
        let dvc = storyboard.instantiateViewController(withIdentifier: "AnimalDetailsVc") as! AnimalDetailsVc
        
        
        dvc.getImage = imageArray[indexPath.row]
        dvc.getName = animalNames[indexPath.row]
        
        
        self.navigationController?.pushViewController(dvc, animated: true)
    }
    
}
