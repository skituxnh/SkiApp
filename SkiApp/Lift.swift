//
//  Lifts.swift
//  SkiApp
//
//  Created by JB on 12/2/15.
//  Copyright © 2015 Josh Burt. All rights reserved.
//

import Foundation
import UIKit

class Lift {

    static let liftsKey = "lifts"
    static let statusKey = "status"

    var liftName: String = ""
    var liftStatus: String = ""
    var arrayOfTrails: [Trails] = []

    init(jsonDictionary:[String : AnyObject]) {
        self.liftName = jsonDictionary.keys.first!
        self.liftStatus = jsonDictionary.values.first! as! String
        self.arrayOfTrails = TrailController.sharedInstance.getTrailsForLiftName(liftName)
    }
//    func setTrails(liftName: String) -> [Trails] {
//        
//    }
}
