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

    var roadArray: [Road] = []

    static func getCurrentRoad(completion: (roadData: Road?) -> Void) {
        let url = NetworkController.roadStatusURL()
        NetworkController.dataAtURL(url) { (resultData) -> Void in

            guard let resultData = resultData
                else {
                    print("no data returned")
                    completion(roadData: nil)
                    return
            }

            let jsonObject: AnyObject

            do {
                 jsonObject = try NSJSONSerialization.JSONObjectWithData(resultData, options: NSJSONReadingOptions.AllowFragments)
//                print(jsonObject)
            } catch let error as NSError {
                print("no data returned")
                return
            }
                if let dataDictionary = jsonObject["statusDescription"] as? [String:AnyObject] {
                    if let statusDescription = dataDictionary["statusDescription"] as? String {
                        print(dataDictionary["statusDescription"])

                }
                    completion(roadData: nil)
            }
        }
    }
}
