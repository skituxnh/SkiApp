//
//  LiftTrailTableViewCell.swift
//  SkiApp
//
//  Created by JB on 12/7/15.
//  Copyright © 2015 Josh Burt. All rights reserved.
//

import UIKit

protocol CellExpansionProtocol {
    func expandLiftCell(section: Int)
}
class LiftTrailTableViewCell: UITableViewCell {

    var delegate: CellExpansionProtocol?
    var section: Int = 0

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
    @IBAction func selectedHeader(sender: AnyObject) {
        delegate?.expandLiftCell(section)
    }
}
