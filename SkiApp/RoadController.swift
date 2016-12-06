//
//  RoadController.swift
//  SkiApp
//
//  Created by JB on 12/2/15.
//  Copyright © 2015 Josh Burt. All rights reserved.
//http://udottraffic.utah.gov/1_devices/aux14604.jpeg

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

                        for dict in incidentArray {
                            for (key, value) in dict {
                                print(key, value)
                                
                                if let eventValue = dict[Road.eventCodeKey], let impactValue = dict[Road.impactingKey]  {
                                    
                                    let alertCodeArray = [681,861,862,911,912,943,944,992,993,994,1012,1013,1014,1015,1016]
                                    let containedCode = alertCodeArray.contains(eventValue as! Int)
                                    
                                    if eventValue as! Bool == containedCode && impactValue as! Bool == true {
                                        
                                    }
                                }
                                
//                                switch value {
//                                case true as Bool where key == Road.impactingKey: print("Expect Delays")
//                                    fallthrough
//                                case 407 as Int where key == Road.eventCodeKey: print("Construction")
//                                default: break
//
//                                }
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
