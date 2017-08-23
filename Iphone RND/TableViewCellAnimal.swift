//
//  TableViewCellAnimal.swift
//  Iphone RND
//
//  Created by sibaprasad on 23/08/17.
//  Copyright © 2017 SP inc. All rights reserved.
//

import UIKit

class TableViewCellAnimal: UITableViewCell {

    
    @IBOutlet var imageAnimal: UIImageView!
    @IBOutlet var labelAnimalName: UILabel!
    @IBOutlet var labelAnimalDesc: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
