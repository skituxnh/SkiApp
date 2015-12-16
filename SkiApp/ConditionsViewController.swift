//  ViewController.swift
//  SkiApp
//
//  Created by JB on 11/17/15.
//  Copyright © 2015 Josh Burt. All rights reserved.
import UIKit

class ConditionsViewController: UIViewController {

    @IBOutlet var snowCam: UIWebView!
    @IBOutlet var currentRoadStatusLabel: UILabel!
    @IBOutlet var liftConditionLabel: UILabel!
    var roadStatus :Bool = true

    //    @IBOutlet weak var currentWeatherIcon: UIImage!
    @IBOutlet weak var currentTemperatureLabel: UILabel!
    @IBOutlet weak var currentWindSpeedLabel: UILabel!
    @IBOutlet weak var currentHighTemperatureLabel: UILabel!
    @IBOutlet weak var currentLowTemperatureLabel: UILabel!
    @IBOutlet var forecast24hrSnow: UILabel!
    @IBOutlet var forecast48hrSnow: UILabel!
    @IBOutlet var currentSnow: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        let requestURL = NSURL(string: "http://www.snowbird.com/imagelib/SnowCam/SnowCam_main.jpg")
        let request = NSURLRequest(URL: requestURL!)
        snowCam.loadRequest(request)

        if roadStatus == true {
            //            currentRoadStatusLabel.backgroundColor = UIColor(red: 24, green: 136, blue: 67, alpha: 1.0)
            currentRoadStatusLabel.backgroundColor = UIColor.greenColor()
            currentRoadStatusLabel.text = "SR-210 is Open"
        } else {
            currentRoadStatusLabel.backgroundColor = UIColor.redColor()
            currentRoadStatusLabel.text = "SR-210 is Closed"
        }
        WeatherController.getCurrentWeather() { (weather) -> Void in
            guard let weather = weather else { return }
            dispatch_async(dispatch_get_main_queue(), { () -> Void in

                if let temp = weather.currentTemperature {
                    self.currentTemperatureLabel.text = "\(Int(temp))ºF"
                } else {
                    self.currentTemperatureLabel.text = "No Data Available"
                }
                if let wind = weather.currentWindSpeed {
                    self.currentWindSpeedLabel.text = "\(Int(wind))"
                } else {
                    self.currentWindSpeedLabel.text = "No Data Available"
                }
                if let low = weather.tempMin {
                    self.currentLowTemperatureLabel.text = "\(Int(low))º"
                } else {
                    self.currentLowTemperatureLabel.text = "No Data Available"
                }
                if let high = weather.tempMax {
                    self.currentHighTemperatureLabel.text = "\(Int(high))º"
                } else {
                    self.currentHighTemperatureLabel.text = "No Data Available"
                }
                if let day0Snow = weather.day0Snow {
                    self.currentSnow.text = "\(Int(day0Snow))"
                } else {
                    self.currentSnow.text = "No Data Available"
                }
                if let day1Snow = weather.day1Snow {
                    self.forecast24hrSnow.text = "\(Int(day1Snow))"
                } else {
                    self.forecast24hrSnow.text = "No Data Available"
                }
                if let day2Snow = weather.day2Snow {
                    self.forecast48hrSnow.text = "\(Int(day2Snow))"
                } else {
                    self.forecast48hrSnow.text = "No Data Available"
                }
            })
        }
        RoadController.getCurrentRoad { (roadData) -> Void in
            self.roadStatus = roadData
            print(roadData)
        }
    }
    @IBAction func showMap(sender: AnyObject) {
        performSegueWithIdentifier("showMapSegue", sender: nil)
    }
}



