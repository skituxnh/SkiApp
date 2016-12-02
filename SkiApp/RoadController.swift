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
    
    static func getCurrentRoad(_ completion: @escaping (_ road:Road?) -> Void) {

        let url = NetworkController.roadStatusURL()
        NetworkController.dataAtURL(url) { (resultData) -> Void in
            guard let resultData = resultData
                else {
                    
                    print("no data returned")
                    completion(nil)
                    return
            }
            do {
                let roadAnyObject = try JSONSerialization.jsonObject(with: resultData, options: JSONSerialization.ReadingOptions.allowFragments)
                
                var roadModelObject: Road?
                
                if let roadDictionary = roadAnyObject as? [String:AnyObject] {
                    if let incidentArray = roadDictionary[Road.incidentKey] as? [[String:AnyObject]] {
                        print(incidentArray)
                        for dict in incidentArray {
                            for (key, value) in dict {
                                switch key {
                                case Road.impactingKey:
                                        print("Road Open")
                                case Road.eventCodeKey:
                                    print("Trouble")
                                default: break
                                }
                                switch value {
                                case false as Bool where key == Road.impactingKey:
                                    print("Road is Open")
                                    fallthrough
                                case 701 as Int where key == Road.eventCodeKey:
                                    print("Construction")
                                    fallthrough
                                default: break
                                    
                                }
                            }
                        }
                    }
                    roadModelObject = Road(jsonDictionary: roadDictionary)
                }
                
                completion(roadModelObject)
            } catch {
                completion(nil)
            }
        }
    }
}
