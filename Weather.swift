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
//class Weather {
//
//    static let iconKey = "icon"
//    static let tempKey = "temp"
//    static let windKey = "wind"
//    static let maxTempKey = "temp_max"
//    static let minTempKey = "temp_min"
//
//    var temperatureK: Double?
//    var highTemperatureK: Double?
//    var lowTemperatureK: Double?
//    var wind: Double?
//    var iconString: String = ""
//    var iconImage: UIImage?
//    var temperatureF: Double? {
//        if let tempK = temperatureK {
//            return ((tempK - 273.15)*1.800 + 32.00)
//        } else {
//            return nil
//        }
//    }
//
//    init(jsonWeatherDictionary: [String:AnyObject], jsonResultsDictionary:  [Sting:AnyObject]) {
//        if let icon = jsonWeatherDictionary[Weather.iconKey] as? String {
//            self.icon = icon
//        }
//        if let temp = jsonResultsDictionary[Weather.tempKey] as? String {
//            self.temperatureK = temperatureK
//        }
//        if let wind = jsonWindDictionary[Weather.windKey] as? String {
//            self.wind = wind
//        }
//        if let maxTemp = jsonResultsDictionary[Weather.maxTempKey] as? String {
//            self.highTemperatureK = highTemperatureK
//        }
//        if let minTemp = jsonResultsDictionary[Weather.minTempKey] as? String {
//            self.lowTemperatureK = lowTemperatureK
//        }
//    }
//
//}