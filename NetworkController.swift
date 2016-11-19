
//  NetworkController.swift
//  SkiApp
//  Created by JB on 11/20/15.
//  Copyright © 2015 Josh Burt. All rights reserved.

import Foundation

class NetworkController {

    //Change plist to include App Transport to YES...This creates a security issue. Need to add domian exceptions to prevent major issues

    //WeatherURL
    static func snowbirdWeatherURL() -> URL {

        let baseURL = "https://api.forecast.io/forecast/f6343e5eb6cece8c1830aa248fcc6cb0/"
        let locationCode = "40.5897,-111.6393"

        return URL(string: "\(baseURL)\(locationCode)")!
    }

    //LiftsURL
    static func snowbirdLiftsURL() -> URL {
        let liftAPI = "http://liftie.info/api/resort/snowbird"

        return URL(string: "\(liftAPI)")!
    }
    
    //UDotURL
//    static func sr210Status() -> URL {
//        
//        
//        return URL
//    }
    

    //RoadURL
    static func roadStatusURL() -> URL {
        
        let mapRegionURL = "https://www.mapquestapi.com/traffic/v2/incidents?&outFormat=json&boundingBox=40.61434337107406%2C-111.6434097290039%2C40.535459565069004%2C-111.79018020629883&key"
        let apiKey = "key=b6DImnAvCoyRDzoU5TEoZUemxYyGE4SY"

        return URL(string: "\(mapRegionURL)\(apiKey)")!

    }

    //Session
    static func dataAtURL(_ url: URL, completion: @escaping (_ resultData: Data?) -> Void) {
        let session = URLSession.shared

        //DataTask
        let dataTask = session.dataTask(with: url, completionHandler: { (data, response, error) -> Void in
//            print(data)

            guard let data = data else {
                print(error?.localizedDescription)
                completion(nil)
                return
            }
            completion(data)
        }) 
        dataTask.resume()
    }
}
