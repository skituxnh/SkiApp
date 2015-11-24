//
//  NetworkController.swift
//  SkiApp
//
//  Created by JB on 11/20/15.
//  Copyright © 2015 Josh Burt. All rights reserved.
//

import Foundation

class NetworkController {

    //Weather
    let api = "&appid=07ac20177d4ea1e111c43b4694a8c950"
    let zipCode = "zip=84092"
    let baseWeatherURLString = "http://api.openweathermap.org/data/2.5/weather?"

    //NSURL
    func loadWeather(string: String) -> NSURL {

        let currentWeatherURL = baseWeatherURLString + zipCode + api
        return NSURL(string: currentWeatherURL)!
    }
    //Session
    static func dataAtURL(url: NSURL, completion: (resultData: NSData?) -> Void) {
            let session = NSURLSession.sharedSession()

    //DataTask
    let dataTask = session.dataTaskWithURL(url) { (data, response, error) -> Void in
        print(data)

        if let error = error {
            print(error.localizedDescription)
        }
       completion(resultData: data)
    }
    dataTask.resume()
    }
}

