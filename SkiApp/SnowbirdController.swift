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
    
    static func getSnowData(_ completion: @escaping (_ snowbird: Snowbird?) -> Void) {
    
        let url = NetworkController.snowDataURL()
        NetworkController.dataAtURL(url) { (resultData) -> Void in
            
            guard let resultData = resultData else {
                print("no snow data returned")
                completion(nil)
                return
            }
                
            do {
                    let urlContent = resultData
                    let webContent = NSString(data: urlContent, encoding: String.Encoding.utf8.rawValue)
                    
                    let websiteArray = webContent?.components(separatedBy: "<div id=\"conditions-links\">")
                
                    var snowbirdDataObject = Snowbird(snow24Hrs: "", snow48Hrs: "", snowBase: "", snowYTD: "")
                    
                    if (websiteArray!.count) > 0 {
                        var snowDataArray = websiteArray?[0].components(separatedBy: "<div class=\"total-inches\">")
                        snowDataArray?.remove(at: 0)
                        
                        let hrs24 = (snowDataArray?[0])! as String, hrs48 = (snowDataArray?[1])! as String, base = (snowDataArray?[2])! as String, ytd = (snowDataArray?[3])! as String
                        
                        let hrs24Splitted = hrs24.characters.split { ["<",">","\"","=","/"].contains(String($0)) }
                        var trimmed24 = hrs24Splitted.map { String($0).trimmingCharacters(in: .whitespaces) }
                        print("24HRS: \(trimmed24[0])\"")
                        
                        let hrs48Splitted = hrs48.characters.split { ["<",">","\"","=","/"].contains(String($0)) }
                        var trimmed48 = hrs48Splitted.map { String($0).trimmingCharacters(in: .whitespaces) }
                        print("48HRS: \(trimmed48[0])\"")
                        
                        let baseSplitted = base.characters.split { ["<",">","\"","=","/"].contains(String($0)) }
                        var trimmedBase = baseSplitted.map { String($0).trimmingCharacters(in: .whitespaces) }
                        print("BASE: \(trimmedBase[0])\"")
                        
                        let ytdSplitted = ytd.characters.split { ["<",">","\"","=","/"].contains(String($0)) }
                        var trimmedYTD = ytdSplitted.map { String($0).trimmingCharacters(in: .whitespaces) }
                        print("YTD: \(trimmedYTD[0])\"")
                        
                        snowbirdDataObject = Snowbird(snow24Hrs: "\(trimmed24[0])", snow48Hrs: "\(trimmed48[0])", snowBase: "\(trimmedBase[0])", snowYTD: "\(trimmedYTD[0])")
                    }
                completion(snowbirdDataObject)
            } catch {
                completion(nil)
                print("no snow data returned")
                return
            }
            }
        }
    }

