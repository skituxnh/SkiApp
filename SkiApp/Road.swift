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

    var impact: Int = 0
    var eventCode: Int = 0
    
    init(jsonDictionary: [String:AnyObject]) {
        
        if let incidents = jsonDictionary[Road.incidentKey] as? [String:AnyObject] {
            if let impacting = incidents[Road.impactingKey] as? Int {
                self.impact = impacting
            }
            if let eventCode = incidents[Road.eventCodeKey] as? Int {
                self.eventCode = eventCode
            }
        }
    }
}


