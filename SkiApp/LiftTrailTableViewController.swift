//
//  LiftTrailTableViewController.swift
//  SkiApp
//
//  Created by JB on 11/17/15.
//  Copyright © 2015 Josh Burt. All rights reserved.
//

import UIKit

class LiftTrailTableViewController: UITableViewController, CellExpansionProtocol {

    var liftArray: [Lift] {
        return LiftController.sharedInstance.liftArray
    }
    var trailArray: [Trails] {
        return TrailController.trailArray
    }
    var expandedLifts: [Bool] = []

    var expandedTrailPaths: [Int] = []
    var selectedLiftPaths: NSIndexPath?

    override func viewDidLoad() {
        super.viewDidLoad()
        expandedLifts = [Bool](count: liftArray.count, repeatedValue: false)

        tableView.backgroundView = UIImageView(image: UIImage(named: "liftBackground.png"))
        tableView.backgroundView?.alpha = 0.15
    }
    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if expandedLifts[section] == true {
            let lift = liftArray[section]
            return lift.arrayOfTrails.count
        } else {
            return 0
        }
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("liftTrailCell", forIndexPath: indexPath) as! LiftTrailTableViewCell
        
        // Trail cells

        if liftArray.count != 0 {
            let lift = liftArray[indexPath.section]
            let trail = lift.arrayOfTrails[indexPath.row]
            cell.liftNameLabel!.text = trail.trailName
            cell.liftNameLabel!.textColor = UIColor.yellowColor()
            cell.liftStatusLabel.text = ""
            cell.backgroundColor = UIColor.whiteColor()
        }
        return cell
    }
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCellWithIdentifier("liftTrailCell") as! LiftTrailTableViewCell

        // Trail cells

        if liftArray.count != 0 {
            let lift = liftArray[section]
            cell.liftNameLabel.text = lift.liftName
            cell.section = section
            cell.delegate = self
            if lift.liftStatus == "open" {
                cell.liftStatusLabel.text = "✔️"
                cell.liftNameLabel!.textColor = UIColor.greenColor()
            } else {
                cell.liftStatusLabel.text = "✖️"
                cell.liftNameLabel!.textColor = UIColor.redColor()
            }
        }
        cell.contentView.backgroundColor = UIColor.whiteColor()
        return cell
    }
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return liftArray.count
    }
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60
    }
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    func expandLiftCell(section: Int) {
        if expandedLifts[section] == false {
            expandedLifts[section] = true
        } else {
            expandedLifts[section] = false
        }
        dispatch_async(dispatch_get_main_queue()) { () -> Void in
            self.tableView.reloadData()
        }
    }
}
