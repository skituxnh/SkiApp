//
//  LiftTrailTableViewCell.swift
//  SkiApp
//
//  Created by JB on 12/7/15.
//  Copyright © 2015 Josh Burt. All rights reserved.
//

import UIKit

protocol CellExpansionProtocol {
    func expandLiftCell(indexPath: NSIndexPath)
}

class LiftTrailTableViewCell: UITableViewCell {
    @IBOutlet var liftNameLabel: UILabel!
    @IBOutlet var liftStatusLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    override func prepareForReuse() {
        liftNameLabel.textColor = UIColor.orangeColor()
        liftStatusLabel.textColor = UIColor.purpleColor()
    }

}
