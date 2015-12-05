//
//  LiftController.swift
//  SkiApp
//
//  Created by JB on 12/2/15.
//  Copyright © 2015 Josh Burt. All rights reserved.
//
import UIKit

class LiftController {
    
    static func getCurrentLifts(completion: ( ([Lift], Int) ) -> Void) {

        let url = NetworkController.snowbirdLiftsURL()
        NetworkController.dataAtURL(url) { (resultData) -> Void in

            guard let resultData = resultData
                else {
                    print("no data returned")
                    completion(([], -1))
                    return
            }
            do {

                let liftAnyObject = try NSJSONSerialization.JSONObjectWithData(resultData, options: NSJSONReadingOptions.AllowFragments)

                let liftDictionary = liftAnyObject[Lift.liftsKey] as! [String:AnyObject]
                let statusDictionary = liftDictionary["status"] as! [String:AnyObject]
                var arrayOfLifts : [Lift] = []

                for (key, value) in statusDictionary {
                    print([key : value])
                    let lift = Lift(jsonDictionary: [key: value])
                    arrayOfLifts.append(lift)
                }
                let numberOfOpenLifts = liftDictionary["stats"] as! [String:AnyObject]
                var openLifts = 0
                completion((arrayOfLifts, numberOfOpenLifts))
            } catch {
                completion(([], -1))
                print("no data returned")
            }
        }
    }
}
