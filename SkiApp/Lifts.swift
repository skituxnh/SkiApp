//
//  Lifts.swift
//  SkiApp
//
//  Created by JB on 12/2/15.
//  Copyright © 2015 Josh Burt. All rights reserved.
//

import Foundation
import UIKit

class Lifts {

    static let liftsKey = "lifts"
    static let statusKey = "status"

//    var liftName: String = ""
//    var liftStatus: String = ""

    init(jsonDictionary:[String:AnyObject]) {

        if let lift = jsonDictionary[Lifts.liftsKey] as? [String:AnyObject] {
            if let status = lift[Lifts.statusKey] as? [String: String] {
                let liftName = [String](status.keys)
                let liftStatus = [String](status.values)
                    print ("\(liftName) "+"\(liftStatus)")

            }
        }
    }
}
//    static let aerialTramKey = "Aerial Tram"
//    static let babyThunderKey = "Baby Thunder"
//    static let baldyKey = "Baldy"
//    static let chickadeeKey = "Chickadee"
//    static let gad2Key = "Gad 2"
//    static let gadzoomKey = "Gadzoom"
//    static let littleCloudKey = "Little Cloud"
//    static let midGadKey = "Mid-Gad"
//    static let mineralBasinKey = "Mineral Basin"
//    static let peruvianKey = "Peruvian"
//    static let wilbereKey = "Wilbere"


//                if let open = status[Lifts.aerialTramKey] as? String {
//                    self.liftStatus = open
//                    print(liftStatus)
//                }
//                if let open = status[Lifts.babyThunderKey] as? String {
//                    self.liftStatus = open
//                    print(liftStatus)
//                }
//                if let open = status[Lifts.baldyKey] as? String {
//                    self.liftStatus = open
//                    print(liftStatus)
//                }
//                if let open = status[Lifts.chickadeeKey] as? String {
//                    self.liftStatus = open
//                    print(liftStatus)
//                }
//                if let open = status[Lifts.gad2Key] as? String {
//                    self.liftStatus = open
//                    print(liftStatus)
//                }
//                if let open = status[Lifts.gadzoomKey] as? String {
//                    self.liftStatus = open
//                    print(liftStatus)
//                }
//                if let open = status[Lifts.littleCloudKey] as? String {
//                    self.liftStatus = open
//                    print(liftStatus)
//                }
//                if let open = status[Lifts.midGadKey] as? String {
//                    self.liftStatus = open
//                    print(liftStatus)
//                }
//                if let open = status[Lifts.mineralBasinKey] as? String {
//                    self.liftStatus = open
//                    print(liftStatus)
//                }
//                if let open = status[Lifts.peruvianKey] as? String {
//                    self.liftStatus = open
//                    print(liftStatus)
//                }
//                if let open = status[Lifts.wilbereKey] as? String {
//                    self.liftStatus = open
//                    print(liftStatus)
//                }
