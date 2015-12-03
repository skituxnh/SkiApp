//
//  ViewController.swift
//  SkiApp
//
//  Created by JB on 11/17/15.
//  Copyright © 2015 Josh Burt. All rights reserved.
//

import UIKit

class ConditionsViewController: UIViewController {

    @IBOutlet weak var currentWeatherIcon: UIImage!
    @IBOutlet weak var currentTemperatureLabel: UILabel!
    @IBOutlet weak var currentWindSpeedLabel: UILabel!
    @IBOutlet weak var currentHighTemperatureLabel: UILabel!
    @IBOutlet weak var currentLowTemperatureLabel: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()

        LiftController.getCurrentLifts { (lift) -> Void in
            
        }

        WeatherController.sharedInstance.getCurrentWeather() { (weather) -> Void in
            guard let weather = weather else { return }

                dispatch_async(dispatch_get_main_queue(), { () -> Void in

                    if let tempK = weather.temperatureK {
                        self.currentTemperatureLabel.text = String(Int(tempK * 9/5 - 459.67))
                    } else {
                        self.currentHighTemperatureLabel.text = "No Data available"
                    }
                    if let wind = weather.speed {
                        self.currentWindSpeedLabel.text = String(Int(wind))
                    } else {
                        self.currentWindSpeedLabel.text = "No Data available"
                    }
                    if let maxTempK = weather.highTemperatureK {
                        self.currentHighTemperatureLabel.text = String(Int(maxTempK * 9/5 - 459.67))
                    } else {
                        self.currentHighTemperatureLabel.text = "No Data available"
                    }
                    if let minTempK = weather.lowTemperatureK {
                        self.currentLowTemperatureLabel.text = String(Int(minTempK * 9/5 - 459.67))
                    } else {
                        self.currentLowTemperatureLabel.text = "No Data available"
                    }
                })
            }
        }
    }


