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

    let liftName: String = ""
    let liftStatus: String = ""

    init(jsonDictionary:[String : AnyObject]) {

        if let lift = jsonDictionary[Lifts.liftsKey] as? [String:AnyObject] {
            if let status = lift[Lifts.statusKey] as? [String: String] {
//                let liftName = [String](status.keys)
//                let liftStatus = [String](status.values)
//                    print ("\(liftName) "+"\(liftStatus)")
                print(status)
            }
        }
    }
}
