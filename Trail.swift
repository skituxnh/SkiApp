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
    var trailDifficulty: String //1=easy, 2=moderate, 3=more difficult, 4=very difficult, 5=expert
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

