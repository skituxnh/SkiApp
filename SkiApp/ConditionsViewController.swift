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
    @IBOutlet weak var windSpeedLabel: UILabel!
    @IBOutlet weak var windDirectionLabel: UILabel!
    @IBOutlet weak var currentHighTemperatureLabel: UILabel!
    @IBOutlet weak var currentLowTemperatureLabel: UILabel!
    
    @IBOutlet weak var snowIcon: UIImageView!
    @IBOutlet weak var snow24Label: UILabel!
    @IBOutlet weak var snow48Label: UILabel!
    @IBOutlet weak var snowBaseLabel: UILabel!
    @IBOutlet weak var snowYTDLabel: UILabel!
    
    @IBOutlet weak var roadStatusLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = false
        
        RoadController.getCurrentRoad { (road) in
            DispatchQueue.main.async {
                if RoadController.sharedRoadDict["UT-210"]?.roadOpen == false {
                    self.roadStatusLabel.text = "DELAYED"
                } else {
//                    self.roadStatusLabel.backgroundColor = UIColor.green
                    self.roadStatusLabel.textColor = UIColor.white
                    self.roadStatusLabel.text = "OPEN"
                }
            }
        }
        
        SnowbirdController.fetchSnowData { (snowbird) in
            guard let snowbird = snowbird else { return }
            DispatchQueue.main.async {
                if let hrs24 = snowbird.snow24Hrs {
                    self.snow24Label.text = "24hrs: \(hrs24)\""
                }
                if let hrs48 = snowbird.snow24Hrs {
                    self.snow48Label.text = "48hrs: \(hrs48)\""
                }
                if let base = snowbird.snowBase {
                    self.snowBaseLabel.text = "base: \(base)\""
                }
                if let ytd = snowbird.snowYTD {
                    self.snowYTDLabel.text = "ytd: \(ytd)\""
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
                    self.currentTemperatureLabel.text = "\(Int(temp))Fº"
                } else {
                    self.currentTemperatureLabel.text = "NA"
                }
                if let speed = weather.currentWindSpeed {
                    self.windSpeedLabel.text = "\(Int(speed))mph"
                } else {
                    self.windSpeedLabel.text = ""
                }
                if let bearing = weather.currentWindBearing {
                    let direction = WeatherController.convertBearingToDirection(bearing)
                    self.windDirectionLabel.text = "\(direction)"
                } else {
                    self.windDirectionLabel.text = ""
                }
                if let low = weather.tempMin {
                    self.currentLowTemperatureLabel.text = "low: \(Int(low))º"
                } else {
                    self.currentLowTemperatureLabel.text = "NA"
                }
                if let high = weather.tempMax {
                    self.currentHighTemperatureLabel.text = "\(Int(high))º :high"
                } else {
                    self.currentHighTemperatureLabel.text = "NA"
                }
                if let weatherIcon = weather.iconImageString {
                    self.currentWeatherIcon.image = UIImage(named: weatherIcon)
                    print(weatherIcon)
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

