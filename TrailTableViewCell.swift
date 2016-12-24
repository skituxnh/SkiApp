//
//  TrailTableViewCell.swift
//  SkiApp
//
//  Created by JB on 12/17/15.
//  Copyright © 2015 Josh Burt. All rights reserved.
//

import UIKit

class TrailTableViewCell: UITableViewCell {

    @IBOutlet var trailNameLabel: UILabel!
    @IBOutlet var trailSymbolImage: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
