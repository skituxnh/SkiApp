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

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.backgroundView = UIImageView(image: UIImage(named: "liftBackground.png"))
        tableView.backgroundView?.alpha = 0.15
        
    }

    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.liftArray.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("liftTrailCell", forIndexPath: indexPath) as! LiftTrailTableViewCell
        let lifts = self.liftArray[indexPath.row]
//        let name = lifts.liftName
            cell.liftNameLabel?.text = lifts.liftName
            cell.liftStatusLabel?.text = lifts.liftStatus

//        let status = lifts.liftStatus
//            cell.textLabel?.text = status
        return cell
    }
        // MARK: - Navigation

//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//
//    }
//

}
