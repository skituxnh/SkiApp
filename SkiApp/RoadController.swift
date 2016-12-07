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
                
                let roadDictionary = roadAnyObject as! [String:AnyObject]
                
                let incidentsArray = roadDictionary[Road.incidentKey] as! [[String:AnyObject]]
                
                var roadModelObject: Road?
                
                for incidentDictionary in incidentsArray {
                    
                    let impactValue = incidentDictionary[Road.impactingKey] as? Bool
                    let idValue = incidentDictionary[Road.idKey] as? String
                    let eventValue = incidentDictionary[Road.eventCodeKey] as? Double
                    let paramDescValue = incidentDictionary[Road.parameterizedDescriptionKey] as? [String:String]
                    let roadNameValue = paramDescValue?[Road.roadNameKey]
                    
                    print(impactValue, idValue, eventValue, roadNameValue)
                    
                    roadModelObject = Road(jsonDictionary: roadDictionary)
                }
                completion(roadModelObject)
                
            } catch {
                completion(nil)
                print("no data returned")
                return
            }
        }
    }
}

//if let eventValue = dict[Road.eventCodeKey], let impactValue = dict[Road.impactingKey]  {
//    
//    let alertCodeArray = [681,861,862,911,912,943,944,992,993,994,1012,1013,1014,1015,1016]
//    let containedCode = alertCodeArray.contains(eventValue as! Int)
//    
//    if eventValue as! Bool == containedCode && impactValue as! Bool == true {
//        
//    }
//}
//
