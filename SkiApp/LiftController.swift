//
//  LiftController.swift
//  SkiApp
//
//  Created by JB on 12/2/15.
//  Copyright © 2015 Josh Burt. All rights reserved.
//
class LiftController {

    static let sharedInstance = LiftController()

    func getCurrentLifts(completion: (lift: Lifts?) -> Void) {

        let url = NetworkController.snowbirdLiftsURL()
        NetworkController.dataAtURL(url) { (resultData) -> Void in

            guard let resultData = resultData
                else {
                    print("no data returned")
                    completion(lift: nil)
                    return
            }
            do {
                let liftsAnyObject = try NSJSONSerialization.JSONObjectWithData(resultData, options: NSJSONReadingOptions.AllowFragments)
                var liftsModelObject: Lifts?

                if let liftsDictionary = liftsAnyObject as? [String: AnyObject] {
                    liftsModelObject = Lifts(jsonDictionary: liftsDictionary)
                }
                completion(lift: liftsModelObject)
            } catch {
                completion(lift: nil)
            }
        }
    }
}
