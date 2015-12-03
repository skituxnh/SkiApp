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

    static let aerialTramKey = "Aerial Tram"
    static let babyThunderKey = "Baby Thunder"
    static let baldyKey = "Baldy"
    static let chickadeeKey = "Chickadee"
    static let gad2Key = "Gad 2"
    static let gadzoomKey = "Gadzoom"
    static let littleCloudKey = "Little Cloud"
    static let midGadKey = "Mid-Gad"
    static let mineralBasinKey = "Mineral Basin"
    static let peruvianKey = "Peruvian"
    static let wilbereKey = "Wilbere"

    var name: String
    var open: String?
    var difficulty: Int?  //(0=Green, 1=Blue, 2=Black, 3=DoubleBlack)
    var trails: String?

    init(jsonDictionary:[String:AnyObject]) {
        if let lift = jsonDictionary[Lifts.liftsKey] as? [String:AnyObject] {
            if let status = jsonDictionary[Lifts.statusKey] as? [String:AnyObject] {
                if let liftName = lift[Lifts.aerialTramKey] as? String {
                    return
                }
            }
        }
    }
}