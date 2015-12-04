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

    var liftName: String = ""
    var liftStatus: String = ""

    init(jsonDictionary:[String : AnyObject]) {
        print(jsonDictionary[""])
        print(jsonDictionary.keys)
        self.liftName = jsonDictionary.keys.first!
        self.liftStatus = jsonDictionary.values.first! as! String
                print ("\(liftName) "+"\(liftStatus)")
//                print(status)


    }
}
