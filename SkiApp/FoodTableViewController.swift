//
//  FoodTableViewController.swift
//  SkiApp
//
//  Created by Joshua Burt on 11/18/16.
//  Copyright © 2016 Josh Burt. All rights reserved.
//

import UIKit

class FoodTableViewController: UITableViewController {
    
    var dictFood = [String:String]()
    var arrayFood = NSMutableArray()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "food", ofType: "tsv")
        
        let filemgr = FileManager.default
        if filemgr.fileExists(atPath: path!) {
            do {
                let fullText = try String(contentsOfFile: path!, encoding: String.Encoding.utf8)
                let readings = fullText.components(separatedBy: "\n")
                
                for i in 1..<readings.count {
                    let foodData = readings[i].components(separatedBy: "\t")
                    
                    dictFood["Name"] = "\(foodData[0])"
                    dictFood["Summary"] = "\(foodData[1])"
                    dictFood["Location"] = "\(foodData[2])"
                    dictFood["Hours"] = "\(foodData[3])"
                    dictFood["Phone"] = "\(foodData[4])"
                    
                    arrayFood.add(dictFood)
                }
            } catch let error as NSError {
                fatalError("Error: \(error)")
            }
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayFood.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FoodCell", for: indexPath) as! FoodCell

        let food = arrayFood[indexPath.row] as AnyObject
        
        cell.nameLabel.text = "\(food.object(forKey: "Name")!)"
        cell.locationLabel.text = "\(food.object(forKey: "Location")!)"
        cell.summaryLabel.text = "\(food.object(forKey: "Summary")!)"
        cell.hoursLabel.text = "\(food.object(forKey: "Hours")!)"
        cell.phoneLabel.text = "\(food.object(forKey: "Phone")!)"
        
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 115
    }
    
//CALayer values
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.shadowOpacity = 0.5
        cell.layer.shadowOffset = CGSize(width: 0, height: 2)
        cell.layer.borderWidth = 2
        cell.layer.masksToBounds = false
    }
}
