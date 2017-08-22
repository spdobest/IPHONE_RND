//
//  MyTableViewCell.swift
//  Iphone RND
//
//  Created by sibaprasad on 22/08/17.
//  Copyright © 2017 SP inc. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {
 
    @IBOutlet var imageAnimal: UIImageView!
    @IBOutlet var textTitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
