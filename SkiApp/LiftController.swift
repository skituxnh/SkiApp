//
//  LiftController.swift
//  SkiApp
//
//  Created by JB on 12/2/15.
//  Copyright © 2015 Josh Burt. All rights reserved.
//

import Foundation

class LiftController {
    
    static func getCurrentLifts(completion: ([Lifts]) -> Void) {

        let url = NetworkController.snowbirdLiftsURL()
        NetworkController.dataAtURL(url) { (resultData) -> Void in

            guard let resultData = resultData
                else {
                    print("no data returned")
                    completion([Lifts]: nil)
                    return
            }
            do {

                let liftsAnyObject = try NSJSONSerialization.JSONObjectWithData(resultData, options: NSJSONReadingOptions.AllowFragments)

                let liftsDictionary = liftsAnyObject[Lifts.liftsKey] as! [String : AnyObject]
                let statusDictionary = liftsDictionary["status"] as! [String: AnyObject]
                var arrayOfLifts : [Lifts] = []

                for (key, value) in statusDictionary {
                    let lift = Lifts(jsonDictionary: [key: value])
                    arrayOfLifts.append(lift)
                }


//                if let liftsDictionary = liftsAnyObject as? [String: AnyObject] {
//                    liftsModelObject = Lifts(jsonDictionary: liftsDictionary)
//                }
//                completion(lift: liftsModelObject)
            } catch {
                completion([Lifts]: nil)
            }
        }
    }
}
//    "lifts": {
//    "status": {
//    "Aerial Tram": "open",
//    "Baby Thunder": "closed",
//    "Baldy": "closed",
//    "Chickadee": "open",
//    "Gad 2": "open",
//    "Gadzoom": "open",
//    "Little Cloud": "closed",
//    "Mid-Gad": "closed",
//    "Mineral Basin": "closed",
//    "Peruvian": "open",
//    "Wilbere": "closed"
//    },

