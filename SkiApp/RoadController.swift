//
//  RoadController.swift
//  SkiApp
//
//  Created by JB on 12/2/15.
//  Copyright © 2015 Josh Burt. All rights reserved.
//

import UIKit

class RoadController {

    static let sharedInstance = RoadController()
    static func getCurrentRoad(completion: (road:Road?) -> Void) {

        let url = NetworkController.roadStatusURL()
        NetworkController.dataAtURL(url) { (resultData) -> Void in
            guard let resultData = resultData
                else {
                    print("no data returned")
                    completion(road: nil)
                    return
            }
            do {
                let roadAnyObject = try NSJSONSerialization.JSONObjectWithData(resultData, options: NSJSONReadingOptions.AllowFragments)
                var roadModelObject: Road?
                if let roadDictionary = roadAnyObject as? [String:AnyObject] {
                    roadModelObject = Road(jsonDictionary: roadDictionary)
                }
                completion(road: roadModelObject)
            } catch {
                completion(road: nil)
            }
        }
    }
}