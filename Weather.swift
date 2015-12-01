//
//  Weather.swift
//  SkiApp
//
//  Created by JB on 11/20/15.
//  Copyright © 2015 Josh Burt. All rights reserved.
//

////current temp
////icon for conditions
////wind
////hi
////lo
//// F = (K-273.15)*1.800 + 32.00

import Foundation
import UIKit


class Weather {

    static let weatherKey = "weather"
    static let mainKey = "main"
    static let iconKey = "icon"
    static let tempKey = "temp"
    static let windKey = "wind"
    static let speedKey = "speed"
//    static let maxTempKey = "temp_max"
//    static let minTempKey = "temp_min"

    var main = ""
    var temperatureK: Float?
//    var highTemperatureK: Double?
//    var lowTemperatureK: Double?
    var speed: Float?
    var iconString = ""
    var iconImage: UIImage?
    var temperatureF: Float? {

        get {
            if let temperatureK = temperatureK {
                return (temperatureK - 273.15)*1.800 + 32.00
            } else {
                return nil
            }
        }
    }
    init(jsonDictionary:[String:AnyObject]) {

        if let weather = jsonDictionary[Weather.weatherKey] as? [[String:AnyObject]] {
            if let main = weather[0][Weather.mainKey] as? String {
                self.main = main
            }
        }
        if let main = jsonDictionary[Weather.mainKey] as? [String:AnyObject] {
            if let temperature = main[Weather.tempKey] as? NSNumber {
                self.temperatureK = Float(temperature)
            }
        }
        if let wind = jsonDictionary[Weather.windKey] as? [String:AnyObject] {
            if let windSpeed = wind[Weather.windKey] as? Float {
                self.speed = windSpeed
            }
        }
    }

}