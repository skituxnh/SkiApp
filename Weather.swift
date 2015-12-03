//  Weather.swift
//  SkiApp
//
//  Created by JB on 11/20/15.
//  Copyright © 2015 Josh Burt. All rights reserved.
//

import Foundation
import UIKit

class Weather {

    static let weatherKey = "weather"
    static let mainKey = "main"
    static let windKey = "wind"

    static let iconKey = "icon"
    static let tempKey = "temp"
    static let maxTempKey = "temp_max"
    static let minTempKey = "temp_min"
    static let speedKey = "speed"

    var main = ""
    var iconString = ""
    var iconImage: UIImage?
    var temperatureK: Float?
    var highTemperatureK: Float?
    var lowTemperatureK: Float?
    var speed: Float?

    init(jsonDictionary:[String:AnyObject]) {

        if let arrayUsingWeatherKey = jsonDictionary[Weather.weatherKey] as? [[String:AnyObject]] {
            if let main = arrayUsingWeatherKey[0][Weather.mainKey] as? String {
                self.main = main
            }
            if let iconString = arrayUsingWeatherKey[0][Weather.iconKey] as? String {
                self.iconString = iconString
            }
        }
        if let main = jsonDictionary[Weather.mainKey] as? [String:AnyObject] {
            if let temperature = main[Weather.tempKey] as? Float {
                self.temperatureK = temperature
            }
            if let maxTemperature = main[Weather.maxTempKey] as? Float {
                self.highTemperatureK = maxTemperature
            }
            if let minTemperature = main[Weather.minTempKey] as? Float {
                self.lowTemperatureK = minTemperature
            }
        }
        if let wind = jsonDictionary[Weather.windKey] as? [String:AnyObject] {
            if let windSpeed = wind[Weather.speedKey] as? Float {
                self.speed = windSpeed
            }
        }
    }

}