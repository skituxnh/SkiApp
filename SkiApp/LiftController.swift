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
                    completion([])
                    return
            }
            do {

                let liftsAnyObject = try NSJSONSerialization.JSONObjectWithData(resultData, options: NSJSONReadingOptions.AllowFragments)

                let liftsDictionary = liftsAnyObject[Lifts.liftsKey] as! [String : AnyObject]
                let statusDictionary = liftsDictionary["status"] as! [String: AnyObject]
                var arrayOfLifts : [Lifts] = []

                for (key, value) in statusDictionary {
                    print([key : value])
                    let lift = Lifts(jsonDictionary: [key: value])
                 //   print(lift)
                    arrayOfLifts.append(lift)
                }
                completion(arrayOfLifts)

//                if let liftsDictionary = liftsAnyObject as? [String: AnyObject] {
//                    liftsModelObject = Lifts(jsonDictionary: liftsDictionary)
//                }
//                completion(lift: liftsModelObject)
            } catch {
                completion([])
                print("no data returned")
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

