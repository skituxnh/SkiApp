//
//  LiftController.swift
//  SkiApp
//
//  Created by JB on 12/2/15.
//  Copyright © 2015 Josh Burt. All rights reserved.
//
import UIKit

class LiftController {

    static let sharedInstance = LiftController()

    var liftArray: [Lift] = []
    
    static func getCurrentLifts(completion: ([Lift]) -> Void) {

        let url = NetworkController.snowbirdLiftsURL()
        NetworkController.dataAtURL(url) { (resultData) -> Void in

            guard let resultData = resultData
                else {
                    print("no data returned")
                    completion([])
                    return
            }
            do {
                let liftAnyObject = try NSJSONSerialization.JSONObjectWithData(resultData, options: NSJSONReadingOptions.AllowFragments)

                let liftDictionary = liftAnyObject[Lift.liftsKey] as! [String:AnyObject]
                let statusDictionary = liftDictionary["status"] as! [String:AnyObject]
                var arrayOfLifts : [Lift] = []

                for (key, value) in statusDictionary {
                    let lift = Lift(jsonDictionary: [key: value])
                    arrayOfLifts.append(lift)
                }
                completion(arrayOfLifts)
            } catch {
                completion([])
                print("no data returned")
                return
            }
        }
    }
}
