import UIKit

//One upside to all this is that classes don’t need to use the mutating keyword with methods that change their data

class Pizza {
    private var toppings = [String]()
    func add(topping: String) {
        toppings.append(topping)
    }
}
var pizza = Pizza()
pizza.add(topping: "Mushrooms")
// let is constant inside classes
class School {
    var students = 200
    func expel(student: String, for reason: String) {
        print("\(student) has been expelled for \(reason).")
        students -= 1
    }
}
let school = School()
school.expel(student: "Jason", for: "coding during class")
//
struct Park {
    var numberOfFlowers = 1000
   mutating func plantFlowers() {
        numberOfFlowers += 50
    }
}
var park = Park()
park.plantFlowers()
//
struct Piano {
    var untunedKeys = 3
   mutating func tune() {
        if untunedKeys > 0 {
            untunedKeys -= 1
        }
    }
}
var piano = Piano()
piano.tune()

//This attempts to call a mutating method on a constant struct instance.
struct Kindergarten {
    var numberOfScreamingKids = 30
    mutating func handOutIceCream() {
        numberOfScreamingKids = 0
    }
}
var kindergarten = Kindergarten()
kindergarten.handOutIceCream()
//
class Light {
    var onState = false
    func toggle() {
        if onState {
            onState = false
        } else {
            onState = true
        }
        print("Click")
    }
}
let light = Light()
light.toggle()
//
struct Barbecue {
    var charcoalBricks = 20
    mutating func addBricks(_ number: Int) {
        charcoalBricks += number
    }
}
var barbecue = Barbecue()
barbecue.addBricks(4)
