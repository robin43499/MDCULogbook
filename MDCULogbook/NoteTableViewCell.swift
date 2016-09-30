//
//  NoteTableViewCell.swift
//  MDCULogbook
//
//  Created by Peeranut Mahatham on 9/19/2559 BE.
//  Copyright © 2559 Peeranut Mahatham. All rights reserved.
//

import UIKit

class NoteTableViewCell: UITableViewCell {

    @IBOutlet var name: UILabel!
    @IBOutlet var ageSex: UILabel!
    @IBOutlet var symthom: UILabel!
    @IBOutlet var hn: UILabel!
    @IBOutlet var profile_pic: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        name.adjustsFontSizeToFitWidth = true
        ageSex.adjustsFontSizeToFitWidth = true
        symthom.adjustsFontSizeToFitWidth = true
        hn.adjustsFontSizeToFitWidth = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
