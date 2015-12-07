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

//        LiftController.getCurrentLifts { (lifts: [Lift]) -> Void in
//            self.liftArray = lifts
//            dispatch_async(dispatch_get_main_queue(), { () -> Void in
//                self.tableView.reloadData()
//            })
//        }

        tableView.backgroundView = UIImageView(image: UIImage(named: "liftBackground.png"))
        tableView.backgroundView?.alpha = 0.15
        
    }


    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.liftArray.count

    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("liftTrailCell", forIndexPath: indexPath) 

        let lifts = self.liftArray[indexPath.row]
            
         let name = lifts.liftName
            cell.textLabel?.text = name
//            if status == "open" {
//                cell.textLabel?.textColor = UIColor.greenColor()
//            } else {
//                cell.textLabel?.textColor = UIColor.redColor()
//            }
//        }
        return cell
    }


        // MARK: - Navigation

//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//
//    }
//

}
