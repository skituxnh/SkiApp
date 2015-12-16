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
    var expandedLifts: [Bool] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        //initialize array of booleans(all false) equal to the length on number of lifts
        expandedLifts = [Bool](count: liftArray.count, repeatedValue: false)

        tableView.backgroundView = UIImageView(image: UIImage(named: "liftBackground.png"))

        let blurEffect = UIBlurEffect(style: .ExtraLight)
        let blurredBackdropView = UIVisualEffectView(effect: blurEffect)
        blurredBackdropView.alpha = 0.6
        blurredBackdropView.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
        blurredBackdropView.frame = (tableView.backgroundView?.bounds)!
        tableView.backgroundView?.addSubview(blurredBackdropView)

        tableView.backgroundView?.alpha = 1.0
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
            cell.liftNameLabel!.text = "     \(trail.trailName)"
            cell.liftNameLabel!.textColor = UIColor.whiteColor()

            if trail.trailDifficulty == "1" {
                cell.liftStatusLabel.text = "💚"
            } else if trail.trailDifficulty == "2" {
                cell.liftStatusLabel.text = "💙"
            } else if trail.trailDifficulty == "3" {
                cell.liftStatusLabel.text = "💛"
            } else if trail.trailDifficulty == "4" {
                cell.liftStatusLabel.text = "❤️"
            } else {
                cell.liftStatusLabel.text = "💔"
            }
        }
        cell.backgroundColor = UIColor.clearColor()
        return cell
    }

        // Lift Cell
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCellWithIdentifier("liftTrailCell") as! LiftTrailTableViewCell

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
        cell.backgroundColor = UIColor.whiteColor()

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

    //MARK: custom cell delegate

    func expandLiftCell(section: Int) {
        //check specific section(header) to see if expanded, then set accordingly
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
