//
//  EducationTVCell.swift
//  NextGCTask
//
//  Created by syed hammad jan on 24/08/2020.
//  Copyright © 2020 ipkindle pakistan. All rights reserved.
//

import UIKit

class EducationTVCell: UITableViewCell {
     
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var placeLbl: UILabel!
    @IBOutlet weak var nameLbl: UILabel!
    
    @IBOutlet weak var secondNameLbl: UILabel!
    @IBOutlet weak var secondTitleLbl: UILabel!
    @IBOutlet weak var secondPlaceLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
