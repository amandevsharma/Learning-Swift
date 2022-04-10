import UIKit

/* Protocols are a bit like contracts in Swift: they let us define what kinds of
 functionality we expect a data type to support, and Swift ensures that the rest of our code follows those rules.
*/

/* define a series of properties and methods that we want to use. They don’t implement those properties and
 methods – they don’t actually put any code behind it – they just say that the properties and methods must
 exist, a bit like a blueprint.
*/

//if you use { get set } then you can’t conform to the protocol using a constant property.

protocol Vehicle {
    var name: String { get }
    var currentPassengers: Int { get set }
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

//now we’ve created a protocol, and made a Car struct that conforms to the protocol.
struct Car: Vehicle {
    let name = "Car"
    var currentPassengers = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }

    func travel(distance: Int) {
        print("I'm driving \(distance)km.")
    }

    func openSunroof() {
        print("It's a nice day!")
    }
}

/* let’s update the commute() function from earlier so that it uses the new methods we added to Car: */

func commute(distance: Int, using vehicle: Car) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow! I'll try a different vehicle.")
    } else {
        vehicle.travel(distance: distance)
    }
}

let car = Car()
commute(distance: 100, using: car)

/*Swift knows that any type conforming to Vehicle must implement both the estimateTime() and travel() methods, and so it actually lets us use Vehicle as the type of our parameter rather than Car. We can rewrite the function to this
 */

func commute(distance: Int, using vehicle: Vehicle) {
}

struct Bicycle: Vehicle {
    let name = "Bicycle"
    var currentPassengers = 1
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }

    func travel(distance: Int) {
        print("I'm cycling \(distance)km.")
    }
}

let bike = Bicycle()
commute(distance: 50, using: bike)

//
func getTravelEstimates(using vehicles: [Vehicle], distance: Int) {
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance)km")
    }
}
getTravelEstimates(using: [car, bike], distance: 50)

//valid swift code
protocol Swimmable {
    var depth: String { get }
}
//
protocol Singable {
    var lyrics: [String] { get set }
    var notes: [String] { get set }
}

