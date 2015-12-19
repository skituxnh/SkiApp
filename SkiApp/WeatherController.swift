//
//  WeatherController.swift
//  SkiApp
//
//  Created by JB on 11/23/15.
//  Copyright © 2015 Josh Burt. All rights reserved.
//

import UIKit

class WeatherController {

    static func getCurrentWeather(completion: (weather: Weather?) -> Void) {


        let url = NetworkController.snowbirdWeatherURL()
        NetworkController.dataAtURL(url) { (resultData) -> Void in

            guard let resultData = resultData
                else {
                    print("no data returned")
                    completion(weather: nil)
                    return
            }
            do {
                let weatherAnyObject = try NSJSONSerialization.JSONObjectWithData(resultData, options: NSJSONReadingOptions.AllowFragments)
                var weatherModelObject: Weather?

                if let weatherDictionary = weatherAnyObject as? [String: AnyObject] {
                    weatherModelObject = Weather(jsonDictionary: weatherDictionary)
                }
                completion(weather: weatherModelObject)
            } catch {
                completion(weather: nil)
            }
        }
    }

    static func convertBearingToDirection(currentWindBearing: Float) -> String {

        let result: String

        switch currentWindBearing {
        case 22.6...67.5: result = "NE"
        case 67.6...112.5: result = "E"
        case 112.6...157.5: result = "SE"
        case 157.6...202.5: result = "S"
        case 202.6...247.5: result = "SW"
        case 247.6...292.5: result = "W"
        case 292.6...337.5: result = "NW"
        default: result = "N"
        }
        return(result)
    }
}


