//  Weather.swift
//  SkiApp
//
//  Created by JB on 11/20/15.
//  Copyright © 2015 Josh Burt. All rights reserved.
//

import Foundation
import UIKit

class Weather {

    static let currentlyKey = "currently"
    static let temperatureKey = "temperature"
    static let apparentTemperatureKey = "apparentTemperature"
    static let windSpeedKey = "windSpeed"
    static let windBearingKey = "windBearing"
    static let dailyKey = "daily"
    static let dataKey = "data"
    static let precipTypeKey = "precipType"
    static let precipAccumulationKey = "precipAccumulation"
    static let temperatureMinKey = "temperatureMin"
    static let temperatureMaxKey = "temperatureMax"
    static let iconKey = "icon"
    static let summaryKey = "summary"
    static let alertsKey = "alerts"
    static let titleKey = "title"

    var currently = ""
    var currentTemperature: Float?
    var windchillTemperature: Float?
    var currentWindSpeed: Float?
    var currentWindBearing: Float?
    var precipType = "snow"
//    var day0Snow: Float?
//    var day1Snow: Float?
//    var day2Snow: Float?
//    var day3Snow: Float?
    var tempMin: Float?
    var tempMax: Float?
    var iconImageString: String?
    var summaryString: String?
    var titleAlertsString: String?

    init(jsonDictionary:[String:AnyObject]) {

        if let currently = jsonDictionary[Weather.currentlyKey] as? [String:AnyObject] {
            if let temperature = currently[Weather.temperatureKey] as? Float {
                self.currentTemperature = temperature
            }
            if let windchill = currently[Weather.apparentTemperatureKey] as? Float {
                self.windchillTemperature = windchill
            }
            if let iconCurrentString = currently[Weather.iconKey] as? String {
                self.iconImageString = iconCurrentString
            }
            if let windSpeed = currently[Weather.windSpeedKey] as? Float {
                self.currentWindSpeed = windSpeed
            }
            if let windBearing = currently[Weather.windBearingKey] as? Float {
                self.currentWindBearing = windBearing
            }
        }
        
        if let alerts = jsonDictionary[Weather.alertsKey] as? [[String:AnyObject]] {
//            print(alerts)
            if let day0Alerts = alerts[0][Weather.titleKey] as? String {
                    self.titleAlertsString = day0Alerts
                } else {
                    print("")
                }
            }

        if let daily = jsonDictionary[Weather.dailyKey] as? [String:AnyObject] {
            if let summary = daily[Weather.summaryKey] as? String {
                self.summaryString = summary
            }
            if let arrayUsingDataKey = daily[Weather.dataKey] as? [[String:AnyObject]] {
                if let day1PrecipType = arrayUsingDataKey[0][Weather.precipTypeKey] as? String {
                    self.precipType = day1PrecipType
                }
//                if let day0precipAccumulation = arrayUsingDataKey[0][Weather.precipAccumulationKey] as? Float {
//                    self.day0Snow = day0precipAccumulation
//                }
                if let day0tempMin = arrayUsingDataKey[0][Weather.temperatureMinKey] as? Float {
                    self.tempMin = day0tempMin
                }
                if let day0tempMax = arrayUsingDataKey[0][Weather.temperatureMaxKey] as? Float {
                    self.tempMax = day0tempMax
                }
                if let day1PrecipType = arrayUsingDataKey[1][Weather.precipTypeKey] as? String {
                    self.precipType = day1PrecipType
                }
//                if let day1precipAccumulation = arrayUsingDataKey[1][Weather.precipAccumulationKey] as? Float {
//                    self.day1Snow = day1precipAccumulation
//                }
//                if let day2PrecipType = arrayUsingDataKey[2][Weather.precipTypeKey] as? String {
//                    self.precipType = day2PrecipType
//                }
//                if let day2precipAccumulation = arrayUsingDataKey[2][Weather.precipAccumulationKey] as? Float {
//                    self.day2Snow = day2precipAccumulation
//                }
//                if let day3PrecipType = arrayUsingDataKey[3][Weather.precipTypeKey] as? String {
//                    self.precipType = day3PrecipType
//                }
//                if let day3precipAccumulation = arrayUsingDataKey[3][Weather.precipAccumulationKey] as? Float {
//                    self.day2Snow = day3precipAccumulation
//                }
            }
        }
    }
}
