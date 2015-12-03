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

    var liftName: String = ""
    var openStatus: String = ""

    init(jsonDictionary:[String:AnyObject]) {

        if let lift = jsonDictionary[Lifts.liftsKey] as? [String:AnyObject] {
            if let status = lift[Lifts.statusKey] as? [String: AnyObject] {
                if let name = status[Lifts.aerialTramKey] as? String {
                    self.liftName = name
                    print(liftName)
                }
                if let name = status[Lifts.babyThunderKey] as? String {
                    self.liftName = name
                    print(liftName)
                }
                if let name = status[Lifts.baldyKey] as? String {
                    self.liftName = name
                    print(liftName)
                }
                if let name = status[Lifts.chickadeeKey] as? String {
                    self.liftName = name
                    print(liftName)
                }
                if let name = status[Lifts.gad2Key] as? String {
                    self.liftName = name
                    print(liftName)
                }
                if let name = status[Lifts.gadzoomKey] as? String {
                    self.liftName = name
                    print(liftName)
                }
                if let name = status[Lifts.littleCloudKey] as? String {
                    self.liftName = name
                    print(liftName)
                }
                if let name = status[Lifts.midGadKey] as? String {
                    self.liftName = name
                    print(liftName)
                }
                if let name = status[Lifts.mineralBasinKey] as? String {
                    self.liftName = name
                    print(liftName)
                }
                if let name = status[Lifts.peruvianKey] as? String {
                    self.liftName = name
                    print(liftName)
                }
                if let name = status[Lifts.wilbereKey] as? String {
                    self.liftName = name
                    print(liftName)
                }
            }
        }
    }
}