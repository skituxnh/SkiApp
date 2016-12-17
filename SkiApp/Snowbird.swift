//
//  Snowbird.swift
//  SkiApp
//
//  Created by Joshua Burt on 12/9/16.
//  Copyright © 2016 Josh Burt. All rights reserved.
//

import Foundation

class Snowbird {
    
    let snow12Hrs: String?
    let snow24Hrs: String?
    let snow48Hrs: String?
    let snowBase: String?
    let snowYTD: String?
    let roadStatus: String?

    
    init(snow12Hrs: String, snow24Hrs: String, snow48Hrs: String, snowBase: String, snowYTD: String, roadStatus: String) {
        
        self.snow12Hrs = snow12Hrs
        self.snow24Hrs = snow24Hrs
        self.snow48Hrs = snow48Hrs
        self.snowBase = snowBase
        self.snowYTD = snowYTD
        self.roadStatus = roadStatus
        
    }
}
