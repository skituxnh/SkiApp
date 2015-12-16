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

    static func getCurrentRoad(completion: (status:Bool) -> Void) {
        let url = NetworkController.roadStatusURL()
        NetworkController.dataAtURL(url) { (resultData) -> Void in

            guard let resultData = resultData
                else {
                    print("no data returned")
                    completion(status:false)
                    return
            }
            let jsonObject: AnyObject

            do {
                jsonObject = try NSJSONSerialization.JSONObjectWithData(resultData, options: NSJSONReadingOptions.AllowFragments)
            } catch _ as NSError {
                print("no data returned")
                return
            }
            var roadStatus = true
            if let status = jsonObject["statusDescription"] as? String{
                if status == "OK"{
                    roadStatus = true
                }else{
                    roadStatus = false
                }
            }
            completion(status: roadStatus)
        }
    }
}

