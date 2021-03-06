//
//  LiftTableViewCell.swift
//  SkiApp
//
//  Created by JB on 12/17/15.
//  Copyright © 2015 Josh Burt. All rights reserved.
//

import UIKit

protocol CellExpansionProtocol {
    func expandLiftCell(_ section: Int)
}

class LiftTableViewCell: UITableViewCell {

    var delegate: CellExpansionProtocol?
    var section: Int = 0

    @IBOutlet var liftNameLabel: UILabel!
//    @IBOutlet var liftStatusLabel: UILabel!
    @IBOutlet var statusImage: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func selectedHeader(_ sender: AnyObject) {
        delegate?.expandLiftCell(section)
    }

}
