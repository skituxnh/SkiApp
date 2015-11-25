//
//  WeatherController.swift
//  SkiApp
//
//  Created by JB on 11/23/15.
//  Copyright © 2015 Josh Burt. All rights reserved.
//

import Foundation
import UIKit

class WeatherController {

    static let sharedInstance = WeatherController()
    var temperatureDicitonary: [String:AnyObject] = [:]
    var windDicitonary: [String:AnyObject] = [:]

    func getCurrentWeather(string: String, completion: (weather: Weather?) -> Void) {

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
}

