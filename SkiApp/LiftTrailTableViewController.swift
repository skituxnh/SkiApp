//
//  LiftTrailTableViewController.swift
//  SkiApp
//
//  Created by JB on 11/17/15.
//  Copyright © 2015 Josh Burt. All rights reserved.
//

import UIKit

class LiftTrailTableViewController: UITableViewController {

    var liftArray: [Lift] {
        return LiftController.sharedInstance.liftArray
    }
    var trailArray: [Trails] {
        return TrailController.sharedInstance.trailArray
    }

    var expandedTrailPaths: [NSIndexPath]?
    var selectedLiftPaths: NSIndexPath?

    override func viewDidLoad() {
        super.viewDidLoad()

        expandedTrailPaths = []

        tableView.backgroundView = UIImageView(image: UIImage(named: "liftBackground.png"))
        tableView.backgroundView?.alpha = 1.0
    }

    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let paths = expandedTrailPaths {
            return self.liftArray.count + paths.count
        }
        else {
            return self.liftArray.count
        }
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("liftTrailCell", forIndexPath: indexPath) as! LiftTrailTableViewCell
        let lifts = self.liftArray[indexPath.row]

        // Trail cells
        if let paths = expandedTrailPaths {
            if paths.count != 0 {
                if paths.contains(indexPath) == true {
                    if let correctIndex = selectedLiftPaths {
                        print(indexPath.row)
                        print(correctIndex.row)
                        let trail = lifts.arrayOfTrails[indexPath.row - correctIndex.row - 1]
                        cell.liftNameLabel!.text = trail.trailName
                    }
                }
                return cell
            }
        }
        //        let name = lifts.liftName
        cell.liftNameLabel?.text = lifts.liftName
        //            cell.liftStatusLabel?.text = lifts.liftStatus
        if lifts.liftStatus == "open" {
            cell.liftStatusLabel.text = "✔️"
            cell.liftStatusLabel.textColor = UIColor.greenColor()
        } else {
            cell.liftStatusLabel.text = "✖️"
            cell.liftStatusLabel.textColor = UIColor.redColor()
        }
        cell.backgroundView?.alpha = 0.4
        return cell
    }
    // MARK: - Navigation

    //    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    //
    //    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {

        // removes grey on selected tableview cell
        tableView.deselectRowAtIndexPath(indexPath, animated: true)

        // check to see if indexPath is an expanded Trail cell
        if expandedTrailPaths?.contains(indexPath) == false {
            let liftAtPath = liftArray[indexPath.row]
            let nextRow = indexPath.row + 1
            var trailIndex = 0
            var removablePaths = [NSIndexPath]()
            for _ in liftAtPath.arrayOfTrails {
                let nextPath = NSIndexPath(forRow: nextRow + trailIndex, inSection: indexPath.section)
                if expandedTrailPaths?.contains(nextPath) == true {
                    let index = expandedTrailPaths?.indexOf(nextPath)
                    expandedTrailPaths?.removeAtIndex(index!)
                    removablePaths.append(nextPath)
                } else  {
                    expandedTrailPaths?.append(nextPath)
                }
                trailIndex += 1
            }
            tableView.beginUpdates()
            if selectedLiftPaths == indexPath {
                tableView.deleteRowsAtIndexPaths(removablePaths, withRowAnimation: UITableViewRowAnimation.Left)
                selectedLiftPaths = nil
            } else {
                tableView.insertRowsAtIndexPaths(expandedTrailPaths!, withRowAnimation: UITableViewRowAnimation.Left)
                selectedLiftPaths = indexPath
            }
            tableView.endUpdates()
        } 
    }
}
