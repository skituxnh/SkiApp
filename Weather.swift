//
//  Weather.swift
//  SkiApp
//
//  Created by JB on 11/20/15.
//  Copyright © 2015 Josh Burt. All rights reserved.
//

import Foundation
import UIKit

//current temp
//icon for conditions
//wind
//hi
//lo
// F = (K-273.15)*1.800 + 32.00


class Weather {
    static let iconStringKey = "icon"

    var temperatureK: Double?
    var highTemperatureK: Double?
    var lowTemperatureK: Double?
    var wind: Double?
    var iconString: String = ""
    var iconImage: UIImage?
    var temperatureF: Double? {
        if let tempK = temperatureK {
            return ((tempK - 273.15)*1.800 + 32.00)
        } else {
            return nil
        }
    }

//    init(jsonWeatherDictionary: [String:AnyObject], jsonResultsDictionary: [String:AnyObject]) {
//        if let iconString = jsonWeatherDictionary[Weather.iconStringKey] as? String {
//            let base
//        }
//    }
}