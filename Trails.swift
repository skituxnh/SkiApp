//
//  Trails.swift
//  SkiApp
//
//  Created by JB on 11/20/15.
//  Copyright © 2015 Josh Burt. All rights reserved.
//

import Foundation

class Trails {

    let trailName: String
    var trailLift: String
    var trailDifficulty: Int
    var trailStatus: Bool?
    var trailGroomed: Bool?

    init(trailName: String, trailLift: String, trailDifficulty: String, trailStatus: String, trailGroomed: Bool) {

        self.trailName = trailName
        self.trailLift = trailLift
        self.trailDifficulty = 0
        self.trailStatus = true
        self.trailGroomed = false
    }
}

