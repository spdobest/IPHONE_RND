//
//  NetworkTableCell.swift
//  Iphone RND
//
//  Created by sibaprasad on 30/08/17.
//  Copyright © 2017 SP inc. All rights reserved.
//

import Foundation
import UIKit
class NetworkTableCell : UITableViewCell {
    
    @IBOutlet var labelTitle: UILabel!
    @IBOutlet var labelEmail: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
