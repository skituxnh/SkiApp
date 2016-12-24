//
//  FoodCell.swift
//  SkiApp
//
//  Created by Joshua Burt on 11/18/16.
//  Copyright © 2016 Josh Burt. All rights reserved.
//

import UIKit

class FoodCell: UITableViewCell {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var summaryLabel: UILabel!
    @IBOutlet var hoursLabel: UILabel!
    @IBOutlet var callButton: UIButton!
    @IBOutlet var phoneLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    @IBAction func callButtonTapped(_ sender: AnyObject) {
        
        let cleanNumber = phoneLabel.text?.replacingOccurrences(of: " ", with: "").replacingOccurrences(of: "-", with: "")
        guard let number = URL(string: "telprompt://" + cleanNumber!) else { return }
        
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(number, options: [:], completionHandler: nil)
        } else {
            UIApplication.shared.openURL(number)
        }
    }
    

}
