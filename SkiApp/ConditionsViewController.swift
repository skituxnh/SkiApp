//  ViewController.swift
//  SkiApp
//
//  Created by JB on 11/17/15.
//  Copyright © 2015 Josh Burt. All rights reserved.
import UIKit

class ConditionsViewController: UIViewController {

    @IBOutlet var currentWeatherSummaryLabel: UILabel!
    @IBOutlet var currentRoadStatusLabel: UILabel!
        var roadStatus: Bool = true

    @IBOutlet weak var currentWeatherIcon: UIImageView!
    @IBOutlet weak var currentTemperatureLabel: UILabel!
    @IBOutlet weak var currentWindSpeedLabel: UILabel!
    @IBOutlet weak var currentWindBearingLabel: UILabel!
    @IBOutlet weak var currentHighTemperatureLabel: UILabel!
    @IBOutlet weak var currentLowTemperatureLabel: UILabel!
    @IBOutlet var forecast24hrSnow: UILabel!
    @IBOutlet var forecast48hrSnow: UILabel!
    @IBOutlet var forecast72hrSnow: UILabel!
    @IBOutlet var currentSnow: UILabel!

   @IBOutlet var currentAlertLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBarHidden = false

        if roadStatus == true {
            currentRoadStatusLabel.backgroundColor = UIColor(red: 110/255, green: 180/255, blue: 63/255, alpha: 1.0)
            currentRoadStatusLabel.text = "SR-210 is Open"
        } else {
            currentRoadStatusLabel.backgroundColor = UIColor.redColor()
            currentRoadStatusLabel.text = "SR-210 is Closed"
        }
        WeatherController.getCurrentWeather() { (weather) -> Void in
            guard let weather = weather else { return }
            dispatch_async(dispatch_get_main_queue(), { () -> Void in

                if let summary = weather.summaryString {
                    self.currentWeatherSummaryLabel.text = "\(summary)"
                } else {
                    self.currentWeatherSummaryLabel.text = ""
                }
                if let temp = weather.currentTemperature {
                    self.currentTemperatureLabel.text = "\(Int(temp))ºF"
                } else {
                    self.currentTemperatureLabel.text = "NA"
                }
                if let wind = weather.currentWindSpeed {
                    self.currentWindSpeedLabel.text = "\(Int(wind))"
                } else {
                    self.currentWindSpeedLabel.text = "NA"
                }
                if let direction = weather.currentWindBearing {
                    let directionText = WeatherController.convertBearingToDirection(direction)
                    self.currentWindBearingLabel.text = "\(directionText)"
                } else {
                    self.currentWindBearingLabel.text = "NA"
                }
                if let low = weather.tempMin {
                    self.currentLowTemperatureLabel.text = "\(Int(low))º"
                } else {
                    self.currentLowTemperatureLabel.text = "NA"
                }
                if let high = weather.tempMax {
                    self.currentHighTemperatureLabel.text = "\(Int(high))º"
                } else {
                    self.currentHighTemperatureLabel.text = "NA"
                }
                if let day0Snow = weather.day0Snow {
                    self.currentSnow.text = "\(Int(day0Snow))\""
                } else {
                    self.currentSnow.text = "0\""
                }
                if let day1Snow = weather.day1Snow {
                    self.forecast24hrSnow.text = "\(Int(day1Snow))\" 24hrs"
                } else {
                    self.forecast24hrSnow.text = "0\" 24hrs"
                }
                if let day2Snow = weather.day2Snow {
                    self.forecast48hrSnow.text = "\(Int(day2Snow))\" 48hrs"
                } else {
                    self.forecast48hrSnow.text = "0\" 48hrs"
                }
                if let day3Snow = weather.day3Snow {
                    self.forecast72hrSnow.text = "\(Int(day3Snow))\" 72hrs"
                } else {
                    self.forecast72hrSnow.text = "0\" 72hrs"
                }
                if let weatherIcon = weather.iconImageString {
                    self.currentWeatherIcon.image = UIImage(named: weatherIcon)
                } else {
                    print("")
                }
                if let titleAlert = weather.titleAlertsString {
                    self.currentAlertLabel.text = "\(titleAlert)"
                } else {
                    print("")
                }
            })
        }
        RoadController.getCurrentRoad { (roadData) -> Void in
            self.roadStatus = roadData
            print(roadData)
        }
    }

    override func viewWillAppear(animated: Bool) {

        navigationController?.navigationBar.frame.size.height = 30
        navigationController?.navigationBarHidden = false

    }
    @IBAction func showMap(sender: AnyObject) {
        performSegueWithIdentifier("showMapSegue", sender: nil)
    }
}




