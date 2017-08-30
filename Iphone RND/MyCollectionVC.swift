//
//  MyCollectionVC.swift
//  Iphone RND
//
//  Created by sibaprasad on 25/08/17.
//  Copyright © 2017 SP inc. All rights reserved.
//

import Foundation
import UIKit

class MyCollectionVC :  ViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    
    @IBOutlet var collectionView: UICollectionView!
    
    var imageArray = [UIImage]()
    var list = ["Cupcake","Donunt","Eclair","Froyo","GingerBread","HoneyComb","Icecream Sandwitch","Jellybean","Kitkat","Lolipop","Marsemano","Nuught","Oreo"]
    
    
    override func viewDidLoad() {
        collectionView.dataSource = self
        collectionView.delegate = self
        imageArray = [#imageLiteral(resourceName: "cupcake.jpg"),#imageLiteral(resourceName: "donunt.jpeg"),#imageLiteral(resourceName: "eclair.jpeg"),#imageLiteral(resourceName: "froyo.jpg"),#imageLiteral(resourceName: "gingerbread.jpg"),#imageLiteral(resourceName: "honeycomb.png"),#imageLiteral(resourceName: "icream_sandwitch.png"),#imageLiteral(resourceName: "jellybean.jpeg"),#imageLiteral(resourceName: "jellybean.jpeg"),#imageLiteral(resourceName: "kitkat.jpg")]
    }
    override func viewWillAppear(_ animated: Bool) {
        
    }
    override func viewWillDisappear(_ animated: Bool) {
        
    }
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return imageArray.count
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "customCell", for: indexPath) as! CollectionCell
//
        cell.layer.cornerRadius = 0
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 0
        
        cell.titleItem.text = list[indexPath.row]
        
         cell.imageItem.image = imageArray[indexPath.row]
        return (cell)
    }
    
    
    @IBAction func onListClick(_ sender: AnyObject) {
        
    }
    
    @IBAction func onGridClick(_ sender: AnyObject) {
        
    }
}
