//
//  ViewController.swift
//  SkiApp
//
//  Created by JB on 11/17/15.
//  Copyright © 2015 Josh Burt. All rights reserved.
//

import UIKit

class ConditionsViewController: UIViewController {

    @IBOutlet weak var currentTemperatureLabel: UILabel!
    @IBOutlet weak var currentWindSpeedLabel: UILabel!
    @IBOutlet weak var currentHighTemperatureLabel: UILabel!
    @IBOutlet weak var currentLowTemperatureLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        WeatherController.sharedInstance.getCurrentWeather() { (weather) -> Void in
            if let weather = weather {
                dispatch_async(dispatch_get_main_queue(), { () -> Void in

                    if let weather = weather.temperatureK{
                    self.currentTemperatureLabel.text = String(weather)
//                    self.currentWindSpeedLabel.text = weather.windSpeed
                    }
                    })
            }
        }

    }
}

