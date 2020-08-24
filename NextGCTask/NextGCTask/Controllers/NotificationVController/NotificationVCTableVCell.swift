//
//  NotificationVCTableVCell.swift
//  NextGCTask
//
//  Created by syed hammad jan on 23/08/2020.
//  Copyright © 2020 ipkindle pakistan. All rights reserved.
//

import UIKit

class NotificationVCTableVCell: UITableViewCell {

    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var containerView: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
