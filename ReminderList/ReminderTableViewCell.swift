//
//  ReminderTableViewCell.swift
//  ReminderList
//
//  Created by Lucas Tate on 2/22/16.
//  Copyright © 2016 Uva. All rights reserved.
//

import UIKit

class ReminderTableViewCell: UITableViewCell {
    
    //Mark: Properties
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
