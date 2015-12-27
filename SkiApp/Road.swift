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

    static let routeKey = "route"
    static let realTimeKey = "realTime"
    static let formattedTimeKey = "formattedTime"

    var realTimeInSeconds: Int = 0
    var estimatedTravelTime: String = ""

    init(jsonDictionary: [String:AnyObject]) {

        if let route = jsonDictionary[Road.routeKey] as? [String:AnyObject] {
            if let totalSeconds = route[Road.realTimeKey] as? Int {
                self.realTimeInSeconds = totalSeconds
//                print(realTimeInSeconds)
            }
            if let estimatedTime = route[Road.formattedTimeKey] as? String {
                self.estimatedTravelTime = estimatedTime
                print(estimatedTravelTime)
            }
        }
    }
}


