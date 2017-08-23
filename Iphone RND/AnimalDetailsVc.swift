//
//  AnimalDetailsVc.swift
//  Iphone RND
//
//  Created by sibaprasad on 24/08/17.
//  Copyright © 2017 SP inc. All rights reserved.
//

import Foundation
import UIKit
class AnimalDetailsVc : UIViewController{
    
    var getName = String()
    var getImage = UIImage()

    @IBOutlet var labelAnimalName: UILabel!
    @IBOutlet var imageAnimalDetail: UIImageView!
    
    override func didReceiveMemoryWarning() {
    
    }

    override func viewDidLoad() {
        labelAnimalName.text = getName
        imageAnimalDetail.image = getImage
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        
    }

}
