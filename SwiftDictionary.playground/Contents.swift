import UIKit

let cookies = ["Chocolate Chip":0.25,"Oatmeal":0.26, "Peanut Butter":0.02, "Sugar":0.03]

var mutableCookies = ["Macadamia Nut":0.06, "Coconut":0.20, "Macaron":0.55]

let piePrice:[String:Double] = ["Apple":3.99, "Raspberry":0.35]

piePrice["Apple"]
let slices = 2.0
let extPrice = piePrice["Apple"]! * slices
print("\(slices) of Apple Pie is \(extPrice)")


var toppings = ["Pepperoni": 0.25,
        "Sausage": 0.26,
        "Onions": 0.02,
        "Green Peppers": 0.03,
        "Cheese": 0.01]

toppings["Sausage"] = 0.29
toppings["Sausage"]

toppings.updateValue(0.2, forKey: "Cheese")
toppings["Cheese"]

let anotherTopping = toppings.updateValue(0.15, forKey: "Gorgonzola")
toppings["BBQ Chicken"] = 0.24

for (myKey, myValue) in toppings {
    print("\(myKey) \t \(myValue)")
}
for myValue in toppings.values{
    print ("Values = \(myValue)")
}

override func tableView(tableView: UITableView?, cellForRowAtIndexPath indexPath: NSIndexPath?) -> UITableViewCell? {
    //note I did not check for nil values. Something has to be really broken for these to be nil.
    let row = indexPath!.row //get the array index from the index path
    let cell = tableView!.dequeueReusableCellWithIdentifier("tableCell", forIndexPath: indexPath) as? UITableViewCell //make the cell
    let myRowKey = pizza.typeList[row] //the dictionary key
    cell.textLabel.text = myRowKey
    let myRowData = pizza.pizzaPricePerInSq[myRowKey] //the dictionary value
    cell.detailTextLabel.text = String(format: "%6.3f",myRowData!)
    return cell
}