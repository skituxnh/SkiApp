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
    
    static var sharedRoadDict: [String:Road] = [:]
    
    static func getCurrentRoad(_ completion: @escaping (_ road: Road?) -> Void) {
        
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
                
                var roadModelObject = Road(impact: false, eventCode: 0, id: "", roadName: "", roadOpen: true)
                
                var roadModelObjectDict: [String : Road] = [:]
                
                for incidentDictionary in incidentsArray {
                    
                    let impactValue = incidentDictionary[Road.impactingKey] as? Bool
                    let idValue = incidentDictionary[Road.idKey] as? String
                    let eventValue = incidentDictionary[Road.eventCodeKey] as? Int
                    let paramDescValue = incidentDictionary[Road.parameterizedDescriptionKey] as? [String:String]
                    let roadNameValue = paramDescValue?[Road.roadNameKey]
                    
                    let alertCodeArray: [Int] = [681,861,862,911,912,943,944,992,993,994,1012,1013,1014,1015,1016,407]
                    let eventCode = eventValue
                    var codeAppears = false
                    
                    for code in alertCodeArray {
                        if code == eventCode {
                            codeAppears = true
                        }
                    }
                    var roadOpen = true
                    
                    if roadNameValue == "UT-210" {
                        if codeAppears && impactValue == true {
                            roadOpen = false
                            print("Road is Closed")
                        } else {
                            roadOpen = true
                            print("Road is Open")
                        }
                    } else {
                        roadOpen = true
                        print("Road is Open")
                    }
                    roadModelObject = Road(impact: impactValue!, eventCode: eventValue!, id: idValue!, roadName: roadNameValue!, roadOpen: roadOpen)
                    
                    roadModelObjectDict["\(roadModelObject.roadName!)"] = roadModelObject
                    
                }
                sharedRoadDict = roadModelObjectDict
                completion(roadModelObject)

                
            } catch {
                completion(nil)
            }
        }
    }
}
