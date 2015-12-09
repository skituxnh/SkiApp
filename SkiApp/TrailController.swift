//
//  TrailController.swift
//  SkiApp
//
//  Created by JB on 12/8/15.
//  Copyright © 2015 Josh Burt. All rights reserved.
//

import UIKit


class TrailController {

    static let sharedInstance = TrailController()

    var trailArray: [Trails] {
        let aliceAvenue = Trails(trailName: "Alice Avenue", trailLift: "Baby Thunder", trailDifficulty: "1", trailStatus: "", trailGroomed: "")
        let bluebell = Trails(trailName: "Bluebell", trailLift: "Baby Thunder", trailDifficulty: "2", trailStatus: "", trailGroomed: "")
        let easyStreet = Trails(trailName: "Easy Street", trailLift: "Baby Thunder", trailDifficulty: "1", trailStatus: "", trailGroomed: "")
        let figure8Gully = Trails(trailName: "Figure 8 Gully", trailLift: "Baby Thunder", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let upperFigure8Gully = Trails(trailName: "Figure 8 Gully", trailLift: "Baby Thunder", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let lazySusan = Trails(trailName: "Lazy Susan", trailLift: "Baby Thunder", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let lowerMiniMinersCamp = Trails(trailName: "Lower Mini Miners' Camp", trailLift: "Baby Thunder", trailDifficulty: "1", trailStatus: "", trailGroomed: "")
        let thunderAlley = Trails(trailName: "Thunder Alley", trailLift: "Baby Thunder", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let tinyTiger = Trails(trailName: "Tiny Tiger", trailLift: "Baby Thunder", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let toBabyThunderChair = Trails(trailName: "To Baby Thunder Chair", trailLift: "Baby Thunder", trailDifficulty: "1", trailStatus: "", trailGroomed: "")
//        let centerOfGravity = Trails(trailName: "Center of Gravity", trailLift: "Baldy", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
//        let fieldsOfGlory = Trails(trailName: "Fields of Glory", trailLift: "Baldy", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
//        let highBaldyTraverse = Trails(trailName: "High Baldy Traverse", trailLift: "Baldy", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
//        let highRidge3 = Trails(trailName: "High Ridge 3", trailLift: "Baldy", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
//        let midBaldyTraverse = Trails(trailName: "Mid - Baldy Traverse", trailLift: "Baldy", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
//        let thanksForTheMemories = Trails(trailName: "Thanks for the Memories", trailLift: "Baldy", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
//        let venusLine = Trails(trailName: "Venus Line", trailLift: "Baldy", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
//        let westBaldy = Trails(trailName: "West Baldy", trailLift: "Baldy", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
//        let blackjackGully = Trails(trailName: "Blackjack Gully", trailLift: "Blackjack", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
//        let blackjackTraverse = Trails(trailName: "Blackjack Traverse", trailLift: "Blackjack", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
//        let condoBypass = Trails(trailName: "Condo Bypass", trailLift: "Blackjack", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
//        let gunTowers = Trails(trailName: "Gun Towers", trailLift: "Blackjack", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
//        let lightningTreeGully = Trails(trailName: "Lightning Tree Gully", trailLift: "Blackjack", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
//        let shot8 = Trails(trailName: "Shot 8", trailLift: "Blackjack", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
//        let theKeyhole = Trails(trailName: "The Keyhole", trailLift: "Blackjack", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
//        let westwardHo = Trails(trailName: "Westward Ho", trailLift: "Blackjack", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
//        let whoCares = Trails(trailName: "Who Cares", trailLift: "Blackjack", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
//        let whodunnit = Trails(trailName: "Whodunnit", trailLift: "Blackjack", trailDifficulty: "2", trailStatus: "", trailGroomed: "")
        let chickadee = Trails(trailName: "Chickadee", trailLift: "Chickadee", trailDifficulty: "1", trailStatus: "", trailGroomed: "")
        let bananas = Trails(trailName: "Bananas", trailLift: "Gad 2", trailDifficulty: "2", trailStatus: "", trailGroomed: "")
        let bassBelow = Trails(trailName: "Bass Below", trailLift: "Gad 2", trailDifficulty: "2", trailStatus: "", trailGroomed: "")
        let blackForest = Trails(trailName: "Black Forest", trailLift: "Gad 2", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let election = Trails(trailName: "Election", trailLift: "Gad 2", trailDifficulty: "2", trailStatus: "", trailGroomed: "")
        let gad2TouringGate = Trails(trailName: "Gad 2 Touring Gate", trailLift: "Gad 2", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let gadGully = Trails(trailName: "Gad Gully", trailLift: "Gad 2", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let gadzooks = Trails(trailName: "Gadzooks", trailLift: "Gad 2", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let lowerBassackwards = Trails(trailName: "Lower Bassackwards", trailLift: "Gad 2", trailDifficulty: "2", trailStatus: "", trailGroomed: "")
        let organGrinder = Trails(trailName: "Organ Grinder", trailLift: "Gad 2", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let sth = Trails(trailName: "S.T.H", trailLift: "Gad 2", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let tricep = Trails(trailName: "Tricep", trailLift: "Gad 2", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let upperBassackwards = Trails(trailName: "Upper Bassackwards", trailLift: "Gad 2", trailDifficulty: "2", trailStatus: "", trailGroomed: "")

        return []
    }

//    func getTrailsForLiftName(liftName: String) -> [Trails] {



//        return 

//    }

}

//var trailString = liftName.stringByReplacingOccurrencesOfString(" ", withString: "")
//trailString = trailString.stringByReplacingOccurrencesOfString("-", withString: "")
//trailString += "Lift"
//// trails = allTrailsArray.filter({$0.liftName, }
//if let trails =
//
