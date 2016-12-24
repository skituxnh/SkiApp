//  NetworkController.swift
//  SkiApp
//  Created by JB on 11/20/15.
//  Copyright © 2015 Josh Burt. All rights reserved.

import Foundation

class NetworkController {

    //WeatherURL
    static func snowbirdWeatherURL() -> URL {
        let baseURL = "https://api.forecast.io/forecast/f6343e5eb6cece8c1830aa248fcc6cb0/"
        let locationCode = "40.5897,-111.6393"

        return URL(string: "\(baseURL)\(locationCode)")!
    }

    //LiftsURL
    static func snowbirdLiftsURL() -> URL {
        let liftAPI = "https://liftie.info/api/resort/snowbird"

        return URL(string: "\(liftAPI)")!
    }
    
    //RoadURL
    static func roadStatusURL() -> URL {
        let mapRegionURL = "https://www.mapquestapi.com/traffic/v2/incidents?&outFormat=json&boundingBox=40.620207045205625%2C-111.59671783447266%2C40.516670214159504%2C-111.7888069152832&key="
        let apiKey = "b6DImnAvCoyRDzoU5TEoZUemxYyGE4SY"

        return URL(string: "\(mapRegionURL)\(apiKey)")!
    }
    
    //SnowURL
    static func snowDataURL() -> URL {
        let snowURL = "https://www.snowbird.com"
        
        return URL(string: "\(snowURL)")!
    }

    //Session
    static func dataAtURL(_ url: URL, completion: @escaping (_ resultData: Data?) -> Void) {
        let session = URLSession.shared
        let dataTask = session.dataTask(with: url, completionHandler: { (data, response, error) -> Void in

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
