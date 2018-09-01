//
//  DocumentTableViewCell.swift
//  Documents
//
//  Created by Hayden on 8/31/18.
//  Copyright © 2018 Harrill, Hayden. All rights reserved.
//

import UIKit

class DocumentTableViewCell: UITableViewCell {
    

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var sizeLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
