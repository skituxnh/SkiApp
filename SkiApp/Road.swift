//
//  Road.swift
//  SkiApp
//
//  Created by JB on 12/2/15.
//  Copyright © 2015 Josh Burt. All rights reserved.
//

import Foundation
import UIKit

class Road {
    
    static let incidentKey = "incidents"
    static let impactingKey = "impacting"
    static let eventCodeKey = "eventCode"
    static let idKey = "id"
    static let parameterizedDescriptionKey = "parameterizedDescription"
    static let roadNameKey = "roadName"
    
    var impact: Bool?
    var eventCode: Int?
    var id: String?
    var roadName: String?
    var roadOpen: Bool?
    
//    init(roadOpen: Bool) {
//        self.roadOpen = roadOpen
//    }
    
    init(impact: Bool, eventCode: Int, id: String, roadName: String, roadOpen: Bool) {
        self.impact = impact
        self.eventCode = eventCode
        self.id = id
        self.roadName = roadName
        self.roadOpen = roadOpen
    }
    
    init(jsonDictionary: [String:AnyObject]) {
        
        if let incidents = jsonDictionary[Road.incidentKey] as? [String:AnyObject] {
            if let impacting = incidents[Road.impactingKey] as? Bool {
                self.impact = impacting
            }
            if let eventCode = incidents[Road.eventCodeKey] as? Int {
                self.eventCode = eventCode
            }
            if let id = incidents[Road.idKey] as? String {
                self.id = id
            }
            if let parameterizedDescription = jsonDictionary[Road.parameterizedDescriptionKey] as? [String:AnyObject] {
                if let roadName = parameterizedDescription[Road.roadNameKey] as? String {
                    self.roadName = roadName
                }
            }
        }
    }
}


