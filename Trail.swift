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
    var trailDifficulty: String //easy, moderate, more difficult, very difficult, expert
    var trailStatus: String?
    var trailGroomed: String?

    init(trailName: String, trailLift: String, trailDifficulty: String, trailStatus: String, trailGroomed: String) {

        self.trailName = trailName
        self.trailLift = trailLift
        self.trailDifficulty = trailDifficulty
        self.trailStatus = trailStatus
        self.trailGroomed = trailGroomed
    }
}

