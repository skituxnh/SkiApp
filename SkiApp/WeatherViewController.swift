//
//  WeatherViewController.swift
//  SkiApp
//
//  Created by JB on 11/30/15.
//  Copyright © 2015 Josh Burt. All rights reserved.
//
import UIKit
import Foundation

class WeatherViewController: UIViewController {

    @IBOutlet weak var currentWeatherIcon: UIImage!
    @IBOutlet weak var currentTempLabel: UILabel!
    @IBOutlet weak var windSpeedLabel: UILabel!
    @IBOutlet weak var highTempLabel: UILabel!
    @IBOutlet weak var lowTempLabel: UILabel!

    func displaySnowbirdWeather() {
            WeatherController.sharedInstance.getCurrentWeather({ (weather) -> Void in
                guard let weatherResult = weather else { return }

                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    if let temperatureK = weatherResult.temperatureK {
                        self.currentTempLabel.text = String(temperatureK) + " ºC"
                    } else {
                        self.currentTempLabel.text = "No data available"
                    }
                    if let speed = weatherResult.speed {
                        self.windSpeedLabel.text = String(speed)
                    } else {
                        self.windSpeedLabel.text = "No data available"
                    }
                    if let maxTemp = weatherResult.highTemperatureK {
                        self.highTempLabel.text = String(maxTemp)
                    } else {
                        self.highTempLabel.text = "No data available"
                    }
                    if let minTemp = weatherResult.lowTemperatureK {
                        self.lowTempLabel.text = String(minTemp)
                    } else {
                        self.lowTempLabel.text = "No data available"
                    }
                })

            })
        }
//    }
}

