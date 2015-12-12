//
//  TrailController.swift
//  SkiApp
//
//  Created by JB on 12/8/15.
//  Copyright © 2015 Josh Burt. All rights reserved.
//

import UIKit


class TrailController {

//    static let sharedInstance = TrailController()


    static var trailArray: [Trails] {
        let aliceAvenue = Trails(trailName: "Alice Avenue", trailLift: "Baby Thunder", trailDifficulty: "1", trailStatus: "", trailGroomed: "")
        let bluebell = Trails(trailName: "Bluebell", trailLift: "Baby Thunder", trailDifficulty: "2", trailStatus: "", trailGroomed: "")
        let easyStreet = Trails(trailName: "Easy Street", trailLift: "Baby Thunder", trailDifficulty: "1", trailStatus: "", trailGroomed: "")
        let figure8Gully = Trails(trailName: "Figure 8 Gully", trailLift: "Baby Thunder", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let upperFigure8Gully = Trails(trailName: "Upper Figure 8 Gully", trailLift: "Baby Thunder", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let lazySusan = Trails(trailName: "Lazy Susan", trailLift: "Baby Thunder", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let lowerMiniMinersCamp = Trails(trailName: "Lower Mini Miners' Camp", trailLift: "Baby Thunder", trailDifficulty: "1", trailStatus: "", trailGroomed: "")
        let thunderAlley = Trails(trailName: "Thunder Alley", trailLift: "Baby Thunder", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let tinyTiger = Trails(trailName: "Tiny Tiger", trailLift: "Baby Thunder", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let toBabyThunderChair = Trails(trailName: "To Baby Thunder Chair", trailLift: "Baby Thunder", trailDifficulty: "1", trailStatus: "", trailGroomed: "")
        let centerOfGravity = Trails(trailName: "Center of Gravity", trailLift: "Peruvian Express", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let fieldsOfGlory = Trails(trailName: "Fields of Glory", trailLift: "Peruvian Express", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let highBaldyTraverse = Trails(trailName: "High Baldy Traverse", trailLift: "Peruvian Express", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let highRidge3 = Trails(trailName: "High Ridge 3", trailLift: "Peruvian Express", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let midBaldyTraverse = Trails(trailName: "Mid - Baldy Traverse", trailLift: "Peruvian Express", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let thanksForTheMemories = Trails(trailName: "Thanks for the Memories", trailLift: "Peruvian Express", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let venusLine = Trails(trailName: "Venus Line", trailLift: "Peruvian Express", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let westBaldy = Trails(trailName: "West Baldy", trailLift: "Peruvian Express", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let blackjackGully = Trails(trailName: "Blackjack Gully", trailLift: "Peruvian Express", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let blackjackTraverse = Trails(trailName: "Blackjack Traverse", trailLift: "Peruvian Express", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let condoBypass = Trails(trailName: "Condo Bypass", trailLift: "Peruvian Express", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let gunTowers = Trails(trailName: "Gun Towers", trailLift: "Peruvian Express", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let lightningTreeGully = Trails(trailName: "Lightning Tree Gully", trailLift: "Peruvian Express", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let shot8 = Trails(trailName: "Shot 8", trailLift: "Peruvian Express", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let theKeyhole = Trails(trailName: "The Keyhole", trailLift: "Peruvian Express", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let westwardHo = Trails(trailName: "Westward Ho", trailLift: "Peruvian Express", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let whoCares = Trails(trailName: "Who Cares", trailLift: "Peruvian Express", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let whodunnit = Trails(trailName: "Whodunnit", trailLift: "Peruvian Express", trailDifficulty: "2", trailStatus: "", trailGroomed: "")
        let chipsAccess = Trails(trailName: "Chip's Access", trailLift: "Peruvian Express", trailDifficulty: "2", trailStatus: "", trailGroomed: "")
        let chipsBypass = Trails(trailName: "Chip's Bypass", trailLift: "Peruvian Express", trailDifficulty: "2", trailStatus: "", trailGroomed: "")
        let chipsFace = Trails(trailName: "Chip's Face", trailLift: "Peruvian Express", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let chipsRun = Trails(trailName: "Chip's Run", trailLift: "Peruvian Express", trailDifficulty: "3", trailStatus: "", trailGroomed: "")
        let hubbaBubba = Trails(trailName: "Hubba Bubba", trailLift: "Peruvian Express", trailDifficulty: "2", trailStatus: "", trailGroomed: "")
        let lowerChipsRun = Trails(trailName: "Lower Chip's Run", trailLift: "Peruvian Express", trailDifficulty: "2", trailStatus: "", trailGroomed: "")
        let middleChipsRun = Trails(trailName: "Middle Chip's Run", trailLift: "Peruvian Express", trailDifficulty: "2", trailStatus: "", trailGroomed: "")
        let phone3Shot = Trails(trailName: "Phone 3 Shot", trailLift: "Peruvian Express", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let rothmanWay = Trails(trailName: "Rothman Way", trailLift: "Peruvian Express", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let upperPrimrosePath = Trails(trailName: "Upper Primrose Path", trailLift: "Peruvian Express", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let willows = Trails(trailName: "Willows", trailLift: "Peruvian Express", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let adager = Trails(trailName: "Adager", trailLift: "Peruvian Express", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let andersonsHill = Trails(trailName: "Anderson's Hill", trailLift: "Peruvian Express", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let cliffAccess = Trails(trailName: "Cliff Access", trailLift: "Peruvian Express", trailDifficulty: "2", trailStatus: "", trailGroomed: "")
        let hotFootGully = Trails(trailName: "Hot Foot Gully", trailLift: "Peruvian Express", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let hotLipsGully = Trails(trailName: "Hot Lips Gully", trailLift: "Peruvian Express", trailDifficulty: "2", trailStatus: "", trailGroomed: "")
        let lowerPrimrosePath = Trails(trailName: "Lower Primrose Path", trailLift: "Peruvian Express", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let lowerSilverFox = Trails(trailName: "Lower Silver Fox", trailLift: "Peruvian Express", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let ohMyGod = Trails(trailName: "Oh My God", trailLift: "Peruvian Express", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let route4Gully = Trails(trailName: "Route 4 Gully", trailLift: "Peruvian Express", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let upperSilverFox = Trails(trailName: "Upper Silver Fox", trailLift: "Peruvian Express", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
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
        let boundryBowl = Trails(trailName: "Boundry Bowl", trailLift: "Gad 2", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let gad2Return = Trails(trailName: "Gad 2 Return", trailLift: "Gad 2", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let lowerTigerTail = Trails(trailName: "Lower Tiger Tail", trailLift: "Gad 2", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let mozzaBowl = Trails(trailName: "Mozza Bowl", trailLift: "Gad 2", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let pearlyGates = Trails(trailName: "Pearly Gates", trailLift: "Gad 2", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let redLensLine = Trails(trailName: "Red Lens Line", trailLift: "Gad 2", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let sob = Trails(trailName: "S.O.B.", trailLift: "Gad 2", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let tedsBowl = Trails(trailName: "Ted's Bowl", trailLift: "Gad 2", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let temptationChutes = Trails(trailName: "Temptation Chutes", trailLift: "Gad 2", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let upperTigerTail = Trails(trailName: "Upper Tiger Tail", trailLift: "Gad 2", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let conrad = Trails(trailName: "Conrad", trailLift: "Gad 2", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let defianceLedge = Trails(trailName: "Defiance Ledge", trailLift: "Gad 2", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let delores = Trails(trailName: "Delores", trailLift: "Gad 2", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let exitGully = Trails(trailName: "Exit Gully", trailLift: "Gad 2", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let figure8Bowl = Trails(trailName: "Figure 8 Bowl", trailLift: "Gad 2", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let highSaddleTraverse = Trails(trailName: "High Saddle Traverse", trailLift: "Gad 2", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let lowSaddle = Trails(trailName: "Low Saddle", trailLift: "Gad 2", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let mo = Trails(trailName: "Mo", trailLift: "Gad 2", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let mushroomLand = Trails(trailName: "Mushroom Land", trailLift: "Gad 2", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let shot44 = Trails(trailName: "Shot 44", trailLift: "Gad 2", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let thunderBowl = Trails(trailName: "Thunder Bowl", trailLift: "Gad 2", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let whiteRabbit = Trails(trailName: "White Rabbit", trailLift: "Gad 2", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let bonarsPass = Trails(trailName: "Bonar's Pass", trailLift: "Little Cloud", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let comeFromBehind = Trails(trailName: "Come From Behind", trailLift: "Little Cloud", trailDifficulty: "4'", trailStatus: "", trailGroomed: "")
        let goblinGully = Trails(trailName: "Goblin Gully", trailLift: "Little Cloud", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let hoops = Trails(trailName: "Hoop's", trailLift: "Little Cloud", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let knuckleheadTraverse = Trails(trailName: "Knucklehead Traverse", trailLift: "Little Cloud", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let lastChoice = Trails(trailName: "Last Choice", trailLift: "Little Cloud", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let markMalu = Trails(trailName: "Mark Malu", trailLift: "Little Cloud", trailDifficulty: "3", trailStatus: "", trailGroomed: "")
        let oldLadies = Trails(trailName: "Old Ladies", trailLift: "Little Cloud", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let rastaChutes = Trails(trailName: "Rasta Chutes", trailLift: "Little Cloud", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let roadToProvo = Trails(trailName: "Road to Provo", trailLift: "Little Cloud", trailDifficulty: "3", trailStatus: "", trailGroomed: "")
        let shireen = Trails(trailName: "Shireen", trailLift: "Little Cloud", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let shot41 = Trails(trailName: "Shot 41", trailLift: "Little Cloud", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let birdsNest = Trails(trailName: "Bird's Nest", trailLift: "Baldy Express", trailDifficulty: "1", trailStatus: "", trailGroomed: "")
        let claimJumper = Trails(trailName: "Claim Jumper", trailLift: "Baldy Express", trailDifficulty: "1", trailStatus: "", trailGroomed: "")
        let luckeyBoy = Trails(trailName: "Luckey Boy", trailLift: "Baldy Express", trailDifficulty: "1", trailStatus: "", trailGroomed: "")
        let skiPatrolGully = Trails(trailName: "Ski Patrol Gully", trailLift: "Baldy Express", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let forty9erGully = Trails(trailName: "49er Gully", trailLift: "Mineral Express", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let bassanova = Trails(trailName: "Bassanova", trailLift: "Mineral Express", trailDifficulty: "2", trailStatus: "", trailGroomed: "")
        let blueByYou = Trails(trailName: "Blue By You", trailLift: "Mineral Express", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let chamonixBowl = Trails(trailName: "Chamonix Bowl", trailLift: "Mineral Express", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let chamonixChutes = Trails(trailName: "Chamonix Chutes", trailLift: "Mineral Express", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let doubleDown = Trails(trailName: "Double Down", trailLift: "Mineral Express", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let fossilChutes = Trails(trailName: "Fossil Chutes", trailLift: "Mineral Express", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let highStakes = Trails(trailName: "High Stakes", trailLift: "Mineral Express", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let limberPines = Trails(trailName: "Limber Pines", trailLift: "Mineral Express", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let livinTheDream = Trails(trailName: "Livin' the Dream", trailLift: "Mineral Express", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let loneStar = Trails(trailName: "Lone Star", trailLift: "Mineral Express", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let nashFloraLode = Trails(trailName: "Nash Flora Lode", trailLift: "Mineral Express", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let notQuiteCorn = Trails(trailName: "Not Quite Corn", trailLift: "Mineral Express", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let pathToParadise = Trails(trailName: "Path to Paradise", trailLift: "Mineral Express", trailDifficulty: "3", trailStatus: "", trailGroomed: "")
        let silverDipper = Trails(trailName: "Silver Dipper", trailLift: "Mineral Express", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let alimonyChutes = Trails(trailName: "Alimony Chutes", trailLift: "Mineral Express", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let altarBowl = Trails(trailName: "Altar Bowl", trailLift: "Mineral Express", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let bookendsBowl = Trails(trailName: "Bookends Bowl", trailLift: "Mineral Express", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let bookendsTraverse = Trails(trailName: "Bookends Traverse", trailLift: "Mineral Express", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let richiesRun = Trails(trailName: "Richie's Run", trailLift: "Mineral Express", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let theEndoras = Trails(trailName: "The Endoras", trailLift: "Mineral Express", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let bookmarkGully = Trails(trailName: "Bookmark Gully", trailLift: "Mineral Express", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let juniorsPowderParadise = Trails(trailName: "Junior's Powder Paradise", trailLift: "Mineral Express", trailDifficulty: "3", trailStatus: "", trailGroomed: "")
        let whiteDiamonds = Trails(trailName: "White Diamonds", trailLift: "Mineral Express", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let barryBarrySteep = Trails(trailName: "Barry Barry Steep", trailLift: "Aerial Tram", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let binxsBumper = Trails(trailName: "Binx's Bumper", trailLift: "Aerial Tram", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let cirqueTraverse = Trails(trailName: "Cirque Traverse", trailLift: "Aerial Tram", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let daltonsDraw = Trails(trailName: "Dalton's Draw", trailLift: "Aerial Tram", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let gadChutes = Trails(trailName: "Gad Chutes", trailLift: "Aerial Tram", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let glen = Trails(trailName: "Glen's", trailLift: "Aerial Tram", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let greatScott = Trails(trailName: "Great Scott", trailLift: "Aerial Tram", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let lowerCirque = Trails(trailName: "Lower Cirque", trailLift: "Aerial Tram", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let middleCirque = Trails(trailName: "Middle Cirque", trailLift: "Aerial Tram", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let restaurantRoll = Trails(trailName: "Restaurant Roll", trailLift: "Aerial Tram", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let upperCirque = Trails(trailName: "Upper Cirque", trailLift: "Aerial Tram", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let upperMachSchnell = Trails(trailName: "Upper Mach Schnell", trailLift: "Aerial Tram", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let wilbereBowl = Trails(trailName: "Wilbere Bowl", trailLift: "Aerial Tram", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let wilmas = Trails(trailName: "Wilma's", trailLift: "Aerial Tram", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let regulatorJohnson = Trails(trailName: "Regulator Johnson", trailLift: "Aerial Tram", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let harpersFerryEast = Trails(trailName: "Harper's Ferry East", trailLift: "Wilbere", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let harpersFerry = Trails(trailName: "Harper's Ferry", trailLift: "Wilbere", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let bassHighway = Trails(trailName: "Bass Highway", trailLift: "Wilbere", trailDifficulty: "1", trailStatus: "", trailGroomed: "")
        let wilbereRidge = Trails(trailName: "Wilbere Ridge", trailLift: "Wilbere", trailDifficulty: "2", trailStatus: "", trailGroomed: "")
        let wilbereCutoff = Trails(trailName: "Wilbere Cutoff", trailLift: "Wilbere", trailDifficulty: "2", trailStatus: "", trailGroomed: "")
        let catCrewCutoff = Trails(trailName: "Cat Crew Cutoff", trailLift: "Wilbere", trailDifficulty: "2", trailStatus: "", trailGroomed: "")
        let minersRoad = Trails(trailName: "Miner's Road", trailLift: "Wilbere", trailDifficulty: "1", trailStatus: "", trailGroomed: "")
        let creekRoad = Trails(trailName: "Creek Road", trailLift: "Wilbere", trailDifficulty: "1", trailStatus: "", trailGroomed: "")
        let sneakyPete = Trails(trailName: "Sneaky Pete", trailLift: "Mid-Gad", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let upperBigEmma = Trails(trailName: "Upper Big Emma", trailLift: "Mid-Gad", trailDifficulty: "2", trailStatus: "", trailGroomed: "")
        let middleEmma = Trails(trailName: "Middle Emma", trailLift: "Mid-Gad", trailDifficulty: "1", trailStatus: "", trailGroomed: "")
        let lowerEmma = Trails(trailName: "Lower Emma", trailLift: "Mid-Gad", trailDifficulty: "1", trailStatus: "", trailGroomed: "")
        let blueAngel = Trails(trailName: "Blue Angel", trailLift: "Mid-Gad", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let fluffyBunny = Trails(trailName: "Fluffy Bunny", trailLift: "Mid-Gad", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let fieldsCutoff = Trails(trailName: "Fields Cutoff", trailLift: "Gadzoom", trailDifficulty: "2", trailStatus: "", trailGroomed: "")
        let lowestBassackwards = Trails(trailName: "Lowest Bassackwards", trailLift: "Gadzoom", trailDifficulty: "2", trailStatus: "", trailGroomed: "")
        let lunchRun = Trails(trailName: "Lunch Run", trailLift: "Gadzoom", trailDifficulty: "2", trailStatus: "", trailGroomed: "")
        let middleBassackwards = Trails(trailName: "Middle Bassackwards", trailLift: "Gadzoom", trailDifficulty: "2", trailStatus: "", trailGroomed: "")
        let raceHill = Trails(trailName: "Race Hill", trailLift: "Wilbere", trailDifficulty: "2", trailStatus: "", trailGroomed: "")
        let upperMiniMinersCamp = Trails(trailName: "Upper Mini Miner's Camp", trailLift: "Gadzoom", trailDifficulty: "1", trailStatus: "", trailGroomed: "")
        let carbonate = Trails(trailName: "Carbonate", trailLift: "Gadzoom", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let getSeriousChutes = Trails(trailName: "Get Serious Chutes", trailLift: "Gadzoom", trailDifficulty: "5", trailStatus: "", trailGroomed: "")
        let lowerMachSchnell = Trails(trailName: "Lower Mach Schnell", trailLift: "Gadzoom", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let madamAnnie = Trails(trailName: "Madam Annie", trailLift: "Gadzoom", trailDifficulty: "2", trailStatus: "", trailGroomed: "")
        let oldSamePlace = Trails(trailName: "Old Same Place", trailLift: "Gadzoom", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let puckerBrush = Trails(trailName: "Pucker Brush", trailLift: "Gadzoom", trailDifficulty: "4", trailStatus: "", trailGroomed: "")
        let west2ndSouth = Trails(trailName: "West 2nd South", trailLift: "Gadzoom", trailDifficulty: "1", trailStatus: "", trailGroomed: "")
        let west2ndSouthOnramp = Trails(trailName: "West 2nd South Onramp", trailLift: "Gadzoom", trailDifficulty: "1", trailStatus: "", trailGroomed: "")

        return [aliceAvenue, bluebell, easyStreet, figure8Gully, upperFigure8Gully, lazySusan, lowerMiniMinersCamp, thunderAlley, tinyTiger, toBabyThunderChair, centerOfGravity, fieldsOfGlory, highBaldyTraverse, highRidge3, midBaldyTraverse, thanksForTheMemories, venusLine, westBaldy, blackjackGully, blackjackTraverse, condoBypass, gunTowers, lightningTreeGully, shot8, theKeyhole, westwardHo, whoCares, whodunnit, chipsAccess, chipsBypass, chipsFace, chipsRun, hubbaBubba, lowerChipsRun, middleChipsRun, phone3Shot, rothmanWay, upperPrimrosePath, willows, adager, andersonsHill, cliffAccess, hotFootGully, hotLipsGully, lowerPrimrosePath, lowerSilverFox, ohMyGod, route4Gully, upperSilverFox, chickadee, bananas, bassBelow, blackForest, election, gad2TouringGate, gadGully, gadzooks, lowerBassackwards, organGrinder, sth, tricep, upperBassackwards, boundryBowl, gad2Return, lowerTigerTail, mozzaBowl, pearlyGates, redLensLine, sob, tedsBowl, temptationChutes, upperTigerTail, conrad, defianceLedge, delores, exitGully, figure8Bowl, highSaddleTraverse, lowSaddle, mo, mushroomLand, shot44, thunderBowl, whiteRabbit, bonarsPass, comeFromBehind, goblinGully, hoops, knuckleheadTraverse, lastChoice, markMalu, oldLadies, rastaChutes, roadToProvo, shireen, shot41, birdsNest, claimJumper, luckeyBoy, skiPatrolGully, forty9erGully, blueByYou, bassanova, chamonixBowl, chamonixChutes, doubleDown, fossilChutes, highStakes, limberPines, livinTheDream, loneStar, nashFloraLode, notQuiteCorn, pathToParadise, silverDipper, alimonyChutes, altarBowl, bookendsBowl, bookendsTraverse, richiesRun, theEndoras, bookmarkGully, juniorsPowderParadise, whiteDiamonds, barryBarrySteep, binxsBumper, cirqueTraverse, daltonsDraw, gadChutes, glen, greatScott, lowerCirque, middleCirque, restaurantRoll, upperCirque, upperMachSchnell, wilbereBowl, wilmas, regulatorJohnson, harpersFerryEast, harpersFerry, bassHighway, wilbereRidge, wilbereCutoff, catCrewCutoff, minersRoad, creekRoad, sneakyPete, upperBigEmma, middleEmma, lowerEmma, blueAngel, fluffyBunny, fieldsCutoff, lowestBassackwards, lunchRun, middleBassackwards, raceHill, upperMiniMinersCamp, carbonate, getSeriousChutes, lowerMachSchnell, madamAnnie, oldSamePlace, puckerBrush, west2ndSouth, west2ndSouthOnramp]
    }
}


//    func getTrailsForLiftName(liftName: String) -> [Trails] {
//        return
//    }

//var trailString = liftName.stringByReplacingOccurrencesOfString(" ", withString: "")
//trailString = trailString.stringByReplacingOccurrencesOfString("-", withString: "")
//trailString += "Lift"
//// trails = allTrailsArray.filter({$0.liftName, }
//if let trails =

