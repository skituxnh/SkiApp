
//  NetworkController.swift
//  SkiApp
//  Created by JB on 11/20/15.
//  Copyright © 2015 Josh Burt. All rights reserved.

import Foundation

class NetworkController {

    //Change plist to include App Transport to YES...This creates a security issue. Need to add domian exceptions to prevent major issues

    //WeatherURL
    static func snowbirdWeatherURL() -> NSURL {

        let baseURL = "https://api.forecast.io/forecast/f6343e5eb6cece8c1830aa248fcc6cb0/"
        let locationCode = "40.5897,-111.6393"
//        let apiKey = "f6343e5eb6cece8c1830aa248fcc6cb0/"

        return NSURL(string: "\(baseURL)\(locationCode)")!
    }

    //LiftsURL
    static func snowbirdLiftsURL() -> NSURL {
        let liftAPI = "http://liftie.info/api/resort/snowbird"

        return NSURL(string: "\(liftAPI)")!
    }

    //RoadURL
    static func roadStatusURL() -> NSURL {
        let baseURL = "http://dev.virtualearth.net/REST/v1/Traffic/Incidents/"
        let location = "40.556,-111.803,40.588,-111.611?"
        let apiKey = "key=Au0Nqg3IsgZBsYIpgkcDym5dtrArd4iA3KWUvdKCBcTLr_ZnLA8UnjVEP6bpmTFs"

        return NSURL(string: "\(baseURL)\(location)\(apiKey)")!
    }

    //Session
    static func dataAtURL(url: NSURL, completion: (resultData: NSData?) -> Void) {
        let session = NSURLSession.sharedSession()

        //DataTask
        let dataTask = session.dataTaskWithURL(url) { (data, response, error) -> Void in
//            print(data)

            guard let data = data else {
                print(error?.localizedDescription)
                completion(resultData: nil)
                return
            }
            completion(resultData: data)
        }
        dataTask.resume()
    }
}
