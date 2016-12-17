//
//  SnowbirdController.swift
//  SkiApp
//
//  Created by Joshua Burt on 12/9/16.
//  Copyright © 2016 Josh Burt. All rights reserved.
//

import UIKit

class SnowbirdController {
    
    static let sharedInstance = SnowbirdController()
    
    static func fetchSnowData(completionHandler: @escaping (_ snowbird: Snowbird?) -> ()) {
        
        let config = URLSessionConfiguration.default
        let session = URLSession(configuration: config)
        let url = URL(string: "https://www.snowbird.com/mountain-report/")!
        let task = session.dataTask(with: url, completionHandler: { data,response,error in
        
            if error != nil {
                print(error!.localizedDescription)
            } else {
                
                do {
                    var snowDataModel = Snowbird(snow12Hrs: "", snow24Hrs: "", snow48Hrs: "", snowBase: "", snowYTD: "", roadStatus: "")
                    
                    let urlContent = data
                    let webContent = NSString(data: urlContent!, encoding: String.Encoding.utf8.rawValue)
                    let roadArray = webContent?.components(separatedBy: "<div class=\"status-message\">")
                    let roadStatusArray = roadArray?[1].components(separatedBy: "</div>")
                    
                    guard let roadStatusMessage = roadStatusArray?[0] else { return }
                    
                    let websiteArray = webContent?.components(separatedBy: "<div class=\"assorted-conditions \">")
                    if (websiteArray!.count) > 0 {
                        
                        var snowDataArray = websiteArray?[0].components(separatedBy: "<div class=\"total-inches\">")
                        snowDataArray?.remove(at: 0)
                        
                        let hrs12 = (snowDataArray?[0])! as String, hrs24 = (snowDataArray?[1])! as String, hrs48 = (snowDataArray?[2])! as String, base = (snowDataArray?[3])! as String, ytd = (snowDataArray?[4])! as String
                        
                        let hrs12Splitted = hrs12.characters.split { ["<",">","\"","=","/"].contains(String($0)) }
                        var trimmed12 = hrs12Splitted.map { String($0).trimmingCharacters(in: .whitespaces) }

                        let hrs24Splitted = hrs24.characters.split { ["<",">","\"","=","/"].contains(String($0)) }
                        var trimmed24 = hrs24Splitted.map { String($0).trimmingCharacters(in: .whitespaces) }
                        
                        let hrs48Splitted = hrs48.characters.split { ["<",">","\"","=","/"].contains(String($0)) }
                        var trimmed48 = hrs48Splitted.map { String($0).trimmingCharacters(in: .whitespaces) }
                        
                        let baseSplitted = base.characters.split { ["<",">","\"","=","/"].contains(String($0)) }
                        var trimmedBase = baseSplitted.map { String($0).trimmingCharacters(in: .whitespaces) }
                        
                        let ytdSplitted = ytd.characters.split { ["<",">","\"","=","/"].contains(String($0)) }
                        var trimmedYTD = ytdSplitted.map { String($0).trimmingCharacters(in: .whitespaces) }
                        
                        snowDataModel = Snowbird(snow12Hrs: "\(trimmed12[0])", snow24Hrs: "\(trimmed24[0])", snow48Hrs: "\(trimmed48[0])", snowBase: "\(trimmedBase[0])", snowYTD: "\(trimmedYTD[0])", roadStatus: "\(roadStatusMessage)")
                    }
                    completionHandler(snowDataModel)
                }
            }
        })
        task.resume()
    }
}



