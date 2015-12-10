import UIKit


class Car {
    var doors: String
    var color: String
    var wheels: String
    var year: String
    var make: String
    var model: String

    init(doors: String, color: String, wheels: String, year: String, make: String, model: String) {
        self.doors = doors
        self.color = color
        self.wheels = wheels
        self.year = year
        self.make = make
        self.model = model
    }
}

var arrayOfCars: [Car] {
    let a = Car(doors: "4", color: "blue", wheels: "4", year: "1989", make: "Honda", model: "Accord")
    let b = Car(doors: "3", color: "yellow", wheels: "4", year: "1981", make: "Toyota", model: "Corolla")
    let c = Car(doors: "2", color: "red", wheels: "4", year: "1991", make: "Nissan", model: "Sentra")
    let d = Car(doors: "4", color: "brown", wheels: "4", year: "1994", make: "Nissan", model: "Altima")
    let e = Car(doors: "2", color: "green", wheels: "4", year: "2000", make: "Toyota", model: "Tacoma")
    let f = Car(doors: "5", color: "gray", wheels: "4", year: "2008", make: "Subaru", model: "Outback")

    return[]
}
    for car in arrayOfCars {
        print(car)

}