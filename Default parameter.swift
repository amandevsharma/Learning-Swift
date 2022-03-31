
import UIKit
// Swift lets us specify default values for any or all of our parameters.
// Default parameters let us make functions easier to call by letting us provide common defaults for parameters.
// when we want to call that function using those default values we can just ignore the parameters
// entirely – as if they didn’t exist – and our function will just do the right thing

func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)
printTimesTables(for: 8)

/* But sometimes – just sometimes – you might be about to add lots of new
 items back into the array, and so there’s a second form of this function that removes
 the items while also keeping the previous capacity:
*/

/* keepingCapacity is a Boolean with the default value of false so
 that it does the sensible thing by default, while also leaving open the option
 of us passing in true for times we want to keep the array’s existing capacity.
*/

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
characters.removeAll(keepingCapacity: true)
print(characters.count)

// valid swift code
func calculateWages(payBand: Int, isOvertime: Bool = false) -> Int {
    var pay = 10_000 * payBand
    if isOvertime {
        pay *= 2
    }
    return pay
}
calculateWages(payBand: 5, isOvertime: true)
print(calculateWages(payBand: 5, isOvertime: true))

// valid swift code
func playGame(name: String, cheat: Bool = false) {
    if cheat {
        print("Let's play \(name); I bet I win!")
    } else {
        print("Let's play \(name)!")
    }
}
playGame(name: "Soccer", cheat: true)

// valid swift code
func packLunchbox(number: Int, healthy: Bool = true) {
    for _ in 0..<number {
        if healthy && number <= 10 {
            print("I'm packing a healthy lunchbox.")
        } else {
            print("Pizza for everyone!")
        }
    }
}
packLunchbox(number: 10, healthy: true)

// valid swift code
func runRace(distance: Int = 10) -> Int {
    if distance < 5 {
        print("This should be easy!")
    } else if distance < 10 {
        print("This should be a nice challenge to run \(distance) miles in a day.")
    } else {
        print("Let's do this!")
    }
    return distance
}
runRace(distance: 7)

// valid swift code
func scoreGoal(overheadKick: Bool = false) {
    if overheadKick {
        print("Wow - amazing!")
    } else {
        print("Great goal!")
    }
}
scoreGoal(overheadKick: true)

// valid swift code
func goToWarp(speed: Int) {
    if speed > 9 {
        print("The engines cannae take any more!")
    } else {
        print("Going to warp \(speed)...")
    }
}

goToWarp(speed: 7)

//valid swift code
func parkCar(_ type: String, automatically: Bool = true) {
    if automatically {
        print("Nice - my \(type) parked itself!")
    } else {
        print("I guess I'll have to do it.")
    }
}
parkCar("Tesla", automatically: false)

// valid swift code
func fireArrow(skillLevel: Int = 1) -> String {
    switch skillLevel {
    case 1...3:
        print("You missed the target.")
    case 4...7:
        print("You hit the target.")
    case 8...10:
        print("Great shot!")
    default:
        print("Try again")
    }
    return ("Your skillLevel is \(skillLevel)")
}

print(fireArrow(skillLevel: 5))

//valid swift code
func eatMeal(withDessert: Bool = true) {
    if withDessert {
        print("All the best meals include dessert.")
    } else {
        print("Bah... maybe next time.")
    }
}
eatMeal()
