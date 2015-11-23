//
//  NetworkController.swift
//  SkiApp
//
//  Created by JB on 11/20/15.
//  Copyright © 2015 Josh Burt. All rights reserved.
//

import Foundation

class NetworkController {

    static let apiKey = "07ac20177d4ea1e111c43b4694a8c950"
    static let snowbirdLocation = "zip=84092"
    static let baseWeatherURL = NSURL(string: "http://api.openweathermap.org/data/2.5/weather?")

    //NSURL

    let snowbirdCurrentWeather = NSURL(string: "\(baseWeatherURL) + \(snowbirdLocation) + &appid=\(apiKey)")

    //Session

    static func dataAtURL(url: NSURL, completion: (resultData: NSData?) -> Void) {
        let session = NSURLSession.sharedSession()

        //DataTask

        let dataTask = session.dataTaskWithURL(url) { (data, _, error) -> Void in

        if let error = error {
        print(error.localizedDescription)
        }
        completion(resultData: data)
        }
        dataTask.resume()
    }
}
