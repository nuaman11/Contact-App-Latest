//
//  TableViewCell.swift
//  Contact App
//
//  Created by TRAINING on 29/12/21.
//  Copyright © 2021 vjec. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var lblNum: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
