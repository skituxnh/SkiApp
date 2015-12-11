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

////         Test data
//        let chickadee = Trails(trailName: "Chickadee", trailLift: "Chickadee", trailDifficulty: "1", trailStatus: "", trailGroomed: "")
//        let bananas = Trails(trailName: "Bananas", trailLift: "Gad 2", trailDifficulty: "2", trailStatus: "", trailGroomed: "")

        self.arrayOfTrails = TrailController.trailArray

        
    }

//    func setTrails(liftName: String) -> [Trails] {
//        
//    }
}
