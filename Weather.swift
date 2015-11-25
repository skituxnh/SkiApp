//
//  Weather.swift
//  SkiApp
//
//  Created by JB on 11/20/15.
//  Copyright © 2015 Josh Burt. All rights reserved.
//

//import Foundation
//import UIKit
//
////current temp
////icon for conditions
////wind
////hi
////lo
//// F = (K-273.15)*1.800 + 32.00
//
//
class Weather {

    static let weatherKey = "weather"
    static let mainKey = "main"
//    static let iconKey = "icon"
    static let tempKey = "temp"
    static let windKey = "wind"
    static let speedKey = "speed"
    static let maxTempKey = "temp_max"
    static let minTempKey = "temp_min"

    var main = ""
    var temperatureK: Double?
    var highTemperatureK: Double?
    var lowTemperatureK: Double?
    var speed: Double?
//    var iconString = ""
//    var iconImage: UIImage?
    var temperatureF: Double? {
            if let tempK = temperatureK {
                return ((tempK - 273.15)*1.800 + 32.00)
            } else {
                return nil
            }
        }

    init(jsonDictionary: [String:AnyObject]) {

        if let weatherKeyArray = jsonDictionary[Weather.weatherKey] as? [[String:AnyObject]] {
            if let main = weatherKeyArray[0][Weather.mainKey] as? String {
                self.main = main
            }
        }
        if let main = jsonDictionary[Weather.mainKey] as? [String:AnyObject] {
            if let temperatureF = main[Weather.tempKey] as? Double {
                self.temperature = temperatureF
            }
        }
        if let wind = jsonDictionary[Weather.windKey] as? [String:AnyObject] {
            if let windSpeed = wind[Weather.windKey] as? Double {
                self.speed = windSpeed
            }
        }
    }

}