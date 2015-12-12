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
    var lift : Lift?
    var trailArray: [Trails] {
        return TrailController.trailArray
    }

    var expanded : Bool = false
    var expandedTrailPaths: [NSIndexPath] = []
    var selectedLiftPaths: NSIndexPath?

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.backgroundView = UIImageView(image: UIImage(named: "liftBackground.png"))
        tableView.backgroundView?.alpha = 0.15
    }
    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.liftArray.count + expandedTrailPaths.count
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("liftTrailCell", forIndexPath: indexPath) as! LiftTrailTableViewCell


        // Trail cells
        if expandedTrailPaths.count != 0 && expanded == true {
            if expandedTrailPaths.contains(indexPath) == true {
                if let correctIndex = selectedLiftPaths {
                    let trail = lift!.arrayOfTrails[indexPath.row - correctIndex.row - 1]
                    cell.liftNameLabel!.text = trail.trailName
                    cell.liftNameLabel!.textColor = UIColor.lightGrayColor()
                    cell.liftStatusLabel.text = ""
                }
            }

            // need to determine which cell is tapped and keep the above constant but reset the below lifts
        } else {

            self.lift = self.liftArray[indexPath.row]
            cell.liftNameLabel?.text = lift!.liftName
            if lift!.liftStatus == "open" {
                cell.liftStatusLabel.text = "✔️"
                cell.liftNameLabel!.textColor = UIColor.greenColor()
                //            cell.liftStatusLabel!.textColor = UIColor.greenColor()
            } else {
                cell.liftStatusLabel.text = "✖️"
                cell.liftNameLabel!.textColor = UIColor.redColor()
                //            cell.liftStatusLabel!.textColor = UIColor.redColor()
            }
            
        }
        return cell
    }
    // MARK: - Navigation
    //    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    //
    //    }
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        // removes grey on selected tableview cell

        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        expandLiftCell(indexPath)
    }

    func expandLiftCell(indexPath: NSIndexPath) {
        // check to see if indexPath is an expanded Trail cell
        if expandedTrailPaths.contains(indexPath) == false {

            // If new lift cell selected (vs. trail)
            if selectedLiftPaths != indexPath && expanded == true {
                tableView.beginUpdates()
                tableView.deleteRowsAtIndexPaths(expandedTrailPaths, withRowAnimation: UITableViewRowAnimation.Left)
                expandedTrailPaths = []
                tableView.endUpdates()
            }

            // Check for Expanded being true
            let liftAtPath = liftArray[indexPath.row]
            let nextRow = indexPath.row + 1
            var trailIndex = 0
            var removablePaths = [NSIndexPath]()
            for _ in liftAtPath.arrayOfTrails {
                let nextPath = NSIndexPath(forRow: nextRow + trailIndex, inSection: indexPath.section)
                if expandedTrailPaths.contains(nextPath) == true {
                    let index = expandedTrailPaths.indexOf(nextPath)
                    expandedTrailPaths.removeAtIndex(index!)
                    removablePaths.append(nextPath)
                } else  {
                    expandedTrailPaths.append(nextPath)
                }
                trailIndex += 1
            }
            tableView.beginUpdates()

            // Check for new Lift Cell selected, when expanded == true

            // Selected the previously selected Lift cell -> should remove trails
            if selectedLiftPaths == indexPath {
                tableView.deleteRowsAtIndexPaths(removablePaths, withRowAnimation: UITableViewRowAnimation.Left)
                selectedLiftPaths = nil
                expanded = false
            } else { // Selecting a new Lift CEll
                tableView.insertRowsAtIndexPaths(expandedTrailPaths, withRowAnimation: UITableViewRowAnimation.Left)
                selectedLiftPaths = indexPath
                expanded = true
            }
            tableView.endUpdates()
        }
    }


}
