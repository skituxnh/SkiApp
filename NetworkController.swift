
//  NetworkController.swift
//  SkiApp
//  Created by JB on 11/20/15.
//  Copyright © 2015 Josh Burt. All rights reserved.

import Foundation

class NetworkController {

    //Change plist to include App Transport to YES...This creates a security issue. Need to add domian exceptions to prevent major issues
    
    //NSURL

    //Weather
    static func snowbirdWeatherURL() -> NSURL {

        let baseURL = "http://api.openweathermap.org/data/2.5/weather?"
        let zipCode = "zip=84092"
        let apiKey = "&appid=07ac20177d4ea1e111c43b4694a8c950"

        return NSURL(string:"\(baseURL)\(zipCode)\(apiKey)")!
    }
    //Lifts
    static func snowbirdLiftsURL() -> NSURL {
        let liftAPI = "http://liftie.info/api/resort/snowbird"

        return NSURL(string: "\(liftAPI)")!
    }

    //Session
    static func dataAtURL(url: NSURL, completion: (resultData: NSData?) -> Void) {
        let session = NSURLSession.sharedSession()

        //DataTask
        let dataTask = session.dataTaskWithURL(url) { (data, response, error) -> Void in
            print(data)

            guard let data = data else {
                print(error?.localizedDescription)
                return
            }
            completion(resultData: data)
        }
        dataTask.resume()
    }
}
