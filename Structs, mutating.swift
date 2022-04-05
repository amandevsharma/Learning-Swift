
import UIKit

/* Swift’s structs let us create our own custom, complex data types, complete with
 their own variables and their own functions.

 */

struct Album {
    let title: String
    let artist: String
    let year: Int

    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}

/*  Album is just like String or Int – we can make them, assign values, copy them, and so on.
 For example, we could make a couple of albums, then print some of their values and call their functions
*/

// create instances of structs we do so using an initializer
let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 2016)

print(red.title)
print(wings.artist)

red.printSummary()
wings.printSummary()

print(wings.printSummary())

// Swift makes the employee and all its data constant
//if we create an employee as a constant using let,
//any that change data belonging to the struct must be marked with a special mutating keyword
struct Employee {
    let name: String
    var vacationRemaining: Int

   mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation!")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Oops! There aren't enough days remaining.")
        }
    }
}
// don't use let. It refuses to be called.
var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
archer.takeVacation(days: 5)
print(archer.vacationRemaining)
//

/* Variables and constants that belong to structs are called properties.
 Functions that belong to structs are called methods.
 When we create a constant or variable out of a struct, we call that an instance – you might
 create a dozen unique instances of the Album struct
*/

// syntactic sugar – Swift silently creates a special function inside the struct called init()
var archer1 = Employee(name: "Sterling Archer", vacationRemaining: 14)
var archer2 = Employee.init(name: "Sterling Archer", vacationRemaining: 14)

// Swift’s own Double type is implemented as a struct, and has an initializer function that accepts an integer.
let a = 1
let b = 2.0
let c = Double(a) + b

//silently generate an initializer with a default value of 14 for vacationRemaining
let name: String
var vacationRemaining = 14
//If you assign a default value to a constant property, that will be removed from the initializer entirely.
//To assign a default but leave open the possibility of overriding it when needed, use a variable property
//use tuples when you want to return two or more arbitrary pieces of values
//from a function, but prefer structs when you have some fixed data you want to send or receive multiple times.

//valid swift code
struct User {
    var name = "Anonymous"
    var age: Int
}
let twostraws = User(name: "Paul", age: 38)

//valid
struct Book {
    var title: String
    var author = "Unknown"
    var pageCount = 0
}

// mutating methods
struct Diary {
    var entries: String
    mutating func add(entry: String) {
        entries += "\(entry)"
    }
}
let hola = Diary(entries: "hello")
print(hola)

//valid swift code
struct Surgeon {
    var operationsPerformed = 0
    mutating func operate(on patient: String) {
        print("Nurse, hand me the scalpel!")
        operationsPerformed += 1
    }
}
//valid swift code
struct Stapler {
    var stapleCount: Int
   mutating func staple() {
        if stapleCount > 0 {
            stapleCount -= 1
            print("It's stapled!")
        } else {
            print("Please refill me.")
        }
    }
}
  
//valid swift code
struct Car {
    var mileage: Int
    mutating func drive(distance: Int) {
        mileage += distance
    }
}

//valid swift code
struct Switch {
    var isOn: Bool
    mutating func toggle() {
        if isOn {
            isOn == false
        } else {
            isOn == true
        }
    }
}
//valid swift code
struct Delorean {
    var speed = 0
    mutating func accelerate() {
        speed += 1
        if speed == 88 {
            travelThroughTime()
        }
    }
    func travelThroughTime() {
        print("Where we're going we don't need roads.")
    }
}
//create instance and play with the data
var myCar = Delorean(speed: 88)
myCar.accelerate()
print(myCar.travelThroughTime())


