//
//  TrailController.swift
//  SkiApp
//
//  Created by JB on 12/8/15.
//  Copyright © 2015 Josh Burt. All rights reserved.
//

import UIKit


class TrailController {

    var babyThunderLift: [Trails] {
        var aliceAvenue = Trails(trailName: "Alice Avenue", trailLift: "Baby Thunder", trailDifficulty: "Easiest", trailStatus: "", trailGroomed: "")
        var bluebell = Trails(trailName: "Bluebell", trailLift: "Baby Thunder", trailDifficulty: "Moderate", trailStatus: "", trailGroomed: "")
        var easyStreet = Trails(trailName: "Easy Street", trailLift: "Baby Thunder", trailDifficulty: "Easiest", trailStatus: "", trailGroomed: "")
        var figure8Gully = Trails(trailName: "Figure 8 Gully", trailLift: "Baby Thunder", trailDifficulty: "Very Difficult", trailStatus: "", trailGroomed: "")
        var upperFigure8Gully = Trails(trailName: "Figure 8 Gully", trailLift: "Baby Thunder", trailDifficulty: "Expert", trailStatus: "", trailGroomed: "")
        var lazySusan = Trails(trailName: "Lazy Susan", trailLift: "Baby Thunder", trailDifficulty: "Very Difficult", trailStatus: "", trailGroomed: "")
        var lowerMiniMinersCamp = Trails(trailName: "Lower Mini Miners' Camp", trailLift: "Baby Thunder", trailDifficulty: "Easiest", trailStatus: "", trailGroomed: "")
        var thunderAlley = Trails(trailName: "Thunder Alley", trailLift: "Baby Thunder", trailDifficulty: "Very Difficult", trailStatus: "", trailGroomed: "")
        var tinyTiger = Trails(trailName: "Tiny Tiger", trailLift: "Baby Thunder", trailDifficulty: "Very Difficult", trailStatus: "", trailGroomed: "")
        var toBabyThunderChair = Trails(trailName: "To Baby Thunder Chair", trailLift: "Baby Thunder", trailDifficulty: "Easiest", trailStatus: "", trailGroomed: "")

            return [aliceAvenue, bluebell, easyStreet, figure8Gully, upperFigure8Gully, lazySusan, lowerMiniMinersCamp, thunderAlley, tinyTiger, toBabyThunderChair]
    }
    var baldyLift : [Trails] {
        var centerOfGravity = Trails(trailName: "Center of Gravity", trailLift: "Baldy", trailDifficulty: "Expert", trailStatus: "", trailGroomed: "")
        var fieldsOfGlory = Trails(trailName: "Fields of Glory", trailLift: "Baldy", trailDifficulty: "Expert", trailStatus: "", trailGroomed: "")
        var highBaldyTraverse = Trails(trailName: "High Baldy Traverse", trailLift: "Baldy", trailDifficulty: "Expert", trailStatus: "", trailGroomed: "")
        var highRidge3 = Trails(trailName: "High Ridge 3", trailLift: "Baldy", trailDifficulty: "Expert", trailStatus: "", trailGroomed: "")
        var midBaldyTraverse = Trails(trailName: "Mid - Baldy Traverse", trailLift: "Baldy", trailDifficulty: "Expert", trailStatus: "", trailGroomed: "")
        var thanksForTheMemories = Trails(trailName: "Thanks for the Memories", trailLift: "Baldy", trailDifficulty: "Expert", trailStatus: "", trailGroomed: "")
        var venusLine = Trails(trailName: "Venus Line", trailLift: "Baldy", trailDifficulty: "Expert", trailStatus: "", trailGroomed: "")
        var westBaldy = Trails(trailName: "West Baldy", trailLift: "Baldy", trailDifficulty: "Expert", trailStatus: "", trailGroomed: "")

            return [centerOfGravity, fieldsOfGlory, highBaldyTraverse, highRidge3, midBaldyTraverse, thanksForTheMemories, venusLine, westBaldy]
    }
}
