//  ViewController.swift
//  SkiApp
//
//  Created by JB on 11/17/15.
//  Copyright © 2015 Josh Burt. All rights reserved.
import UIKit

class ConditionsViewController: UIViewController {
    
    @IBOutlet var currentWeatherSummaryLabel: UILabel!
    
    @IBOutlet weak var currentWeatherIcon: UIImageView!
    @IBOutlet weak var currentTemperatureLabel: UILabel!
    @IBOutlet weak var currentWindLabel: UILabel!
    @IBOutlet weak var currentHighTemperatureLabel: UILabel!
    @IBOutlet weak var currentLowTemperatureLabel: UILabel!
    
    @IBOutlet weak var snowIcon: UIImageView!
    @IBOutlet weak var snow24Label: UILabel!
    @IBOutlet weak var snow48Label: UILabel!
    @IBOutlet weak var snowBaseLabel: UILabel!
    @IBOutlet weak var snowYTDLabel: UILabel!
    
    
    @IBOutlet var currentAlertLabel: UILabel!
    @IBOutlet weak var roadStatusLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = false
        
        RoadController.getCurrentRoad { (road) in
            DispatchQueue.main.async {
                if RoadController.sharedRoadDict["UT-210"]?.roadOpen == false {
                    self.roadStatusLabel.text = "DELAYED"
                } else {
                    self.roadStatusLabel.text = "OPEN"
                }
            }
        }
        
        SnowbirdController.fetchSnowData { (snowbird) in
            guard let snowbird = snowbird else { return }
            DispatchQueue.main.async {
                
                if let hrs24 = snowbird.snow24Hrs {
                    self.snow24Label.text = "24HRS: \(hrs24)"
                }
                if let hrs48 = snowbird.snow24Hrs {
                    self.snow48Label.text = "48HRS: \(hrs48)"
                }
                if let base = snowbird.snowBase {
                    self.snowBaseLabel.text = "BASE: \(base)"
                }
                if let ytd = snowbird.snowYTD {
                    self.snowYTDLabel.text = "YTD: \(ytd)"
                }
            }
        }
        
        
        WeatherController.getCurrentWeather() { (weather) -> Void in
            guard let weather = weather else { return }
            DispatchQueue.main.async(execute: { () -> Void in
                
                
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
//                if let wind = weather.currentWindSpeed {
//                    self.currentWindSpeedLabel.text = "\(Int(wind))"
//                } else {
//                    self.currentWindSpeedLabel.text = "NA"
//                }
//                if let direction = weather.currentWindBearing {
//                    let directionText = WeatherController.convertBearingToDirection(direction)
//                    self.currentWindBearingLabel.text = "\(directionText)"
//                } else {
//                    self.currentWindBearingLabel.text = "NA"
//                }
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
//                if let day0Snow = weather.day0Snow {
//                    self.currentSnow.text = "\(Int(day0Snow))\""
//                } else {
//                    self.currentSnow.text = "0\""
//                }
//                if let day1Snow = weather.day1Snow {
//                    self.forecast24hrSnow.text = "\(Int(day1Snow))\" 24hrs"
//                } else {
//                    self.forecast24hrSnow.text = "0\" 24hrs"
//                }
//                if let day2Snow = weather.day2Snow {
//                    self.forecast48hrSnow.text = "\(Int(day2Snow))\" 48hrs"
//                } else {
//                    self.forecast48hrSnow.text = "0\" 48hrs"
//                }
//                if let day3Snow = weather.day3Snow {
//                    self.forecast72hrSnow.text = "\(Int(day3Snow))\" 72hrs"
//                } else {
//                    self.forecast72hrSnow.text = "0\" 72hrs"
//                }
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
    }
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.frame.size.height = 30
        navigationController?.isNavigationBarHidden = false
    }
    @IBAction func showMap(_ sender: AnyObject) {
        performSegue(withIdentifier: "showMapSegue", sender: nil)
    }
}

