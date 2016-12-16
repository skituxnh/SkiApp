//
//  LiftTrailTableViewController.swift
//  SkiApp
//
//  Created by JB on 11/17/15.
//  Copyright © 2015 Josh Burt. All rights reserved.
//

import UIKit

class LiftTrailTableViewController: UITableViewController, CellExpansionProtocol {
    
//    enum LiftStatus {
//        case open
//        case closed
//        case hold
//        case scheduled
//    }

    var liftArray: [Lift] {
        return LiftController.sharedInstance.liftArray
    }
    var expandedLifts: [Bool] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        //initialize array of booleans(all false) equal to the length on number of lifts
        expandedLifts = [Bool](repeating: false, count: liftArray.count)

    }
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if expandedLifts[section] {
            let lift = liftArray[section]
            return lift.arrayOfTrails.count
        } else {
            return 0
        }
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "trailCell", for: indexPath) as! TrailTableViewCell
        
        // Trail cells
        if liftArray.count != 0 {
            let lift = liftArray[(indexPath as NSIndexPath).section]
            let trail = lift.arrayOfTrails[(indexPath as NSIndexPath).row]
            cell.trailNameLabel!.text = "\(trail.trailName)"
            cell.trailNameLabel!.textColor = UIColor.lightGray

            if trail.trailDifficulty == "1" {
                cell.trailSymbolImage.image = UIImage(named: "greenCircle")
            } else if trail.trailDifficulty == "2" {
                cell.trailSymbolImage.image = UIImage(named: "blueSquare")
            } else if trail.trailDifficulty == "3" {
                cell.trailSymbolImage.image = UIImage(named: "blueBlackDiamond")
            } else if trail.trailDifficulty == "4" {
                cell.trailSymbolImage.image = UIImage(named: "blackDiamond")
            } else {
                cell.trailSymbolImage.image = UIImage(named: "doubleBlackDiamond")
            }
        }
        return cell
    }

        // Lift Cell
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: "liftCell") as! LiftTableViewCell

        if liftArray.count != 0 {
            let lift = liftArray[section]
            cell.liftNameLabel.text = lift.liftName
            cell.section = section
            cell.delegate = self
            
            if lift.liftStatus == "open" {
                cell.liftNameLabel!.textColor = UIColor.darkGray
                cell.statusImage.image = UIImage(named: "open")
            } else if lift.liftStatus == "hold" {
                cell.liftNameLabel!.textColor = UIColor.darkGray
                cell.statusImage.image = UIImage(named: "hold")
            } else if lift.liftStatus == "scheduled" {
                cell.liftNameLabel!.textColor = UIColor.darkGray
                cell.statusImage.image = UIImage(named: "scheduled")
            } else if lift.liftStatus == "closed" {
                cell.liftNameLabel!.textColor = UIColor.darkGray
                cell.statusImage.image = UIImage(named: "closed")
            }
        }
        cell.backgroundColor = UIColor.white

        return cell
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return liftArray.count
    }
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

    //MARK: custom cell delegate

    func expandLiftCell(_ section: Int) {
        //check specific section(header) to see if expanded, then set accordingly
        if !expandedLifts[section]  {
            
            expandedLifts[section] = true
            
        } else {
            
            expandedLifts[section] = false
            
        }
        DispatchQueue.main.async { () -> Void in
            self.tableView.reloadData()
        }
    }
}
