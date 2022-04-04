
import UIKit

/* functions, also assign them to variables, pass functions into functions, and even return functions from functions. */

/* That creates a trivial function and calls it, but then creates a copy of that function and calls
 the copy. As a result, it will print the same message twice.
*/

func greetUser() {
    print("Hi there!")
}

greetUser()

var greetCopy = greetUser
print(greetCopy)

/* what if you wanted to skip creating a separate function, and just assign the functionality directly to a constant or variable? Well, */

let sayHello = {
    print("Hi there!")
}

sayHello()

// closure uses in keyword
/* grandiose name closure expression, which is a fancy way of saying we just created a
 closure – a chunk of code we can pass around and call whenever we want.
*/

// If you want the closure to accept parameters, they need to be written in a special way.
let sayHola = { (name: String) -> String in
    "Hi \(name)!"
}

//The empty parentheses marks a function that takes no parameters.
// Void means “nothing” – this function returns nothing.
// write that as a type annotation for greetCopy
var greetNamaste: () -> Void = greetUser

/* when we take a copy of the function the type of function doesn’t include the for external parameter name
*/
/*external parameter names only matter when we’re calling a function directly, not when
 we create a closure or when we take a copy of the function first.
*/

func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user = data(1989)
print(user)

//sorting the array
let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

// If Suzanne were the captain, the function would look like
// If neither name is Suzanne, just use < to do a normal alphabetical sort.
func captainFirstSorted(name1: String, name2: String) -> Bool {
if name1 == "Suzanne" {
    return true
} else if name2 == "Suzanne" {
    return false
}

return name1 < name2
}

captainFirstSorted(name1: "Tasha", name2: "Gloria")

/* functions like sorted() let us pass in custom code to adjust how they work, and do so
 directly – we don’t need to write out a new function just for that one usage.
*/
let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
})
// closure that accepts one parameter and returns nothing
let payment = { (user: String) in
    print("Paying \(user)…")
}

//closure that accepts one parameter and returns a Boolean:
let payment = { (user: String) -> Bool in
print("Paying \(user)…")
return true
}

// closure that accepts no parameter and returns a Boolean
let payment = { () -> Bool in
    print("Paying an anonymous person…")
    return true
}

// Closures don't take parameters in parentheses, and they are case-sensitive just like regular functions.
//creating basic closure
let learnSwift = {
    print("Closures are like functions")
}
learnSwift()

// accepting parameter in a closure
var cleanRoom = { (name: String) in
    print("I'm cleaning the \(name).")
}
cleanRoom("kitchen")

//valid
var sendMessage = { (message: String) in
    if message != "" {
        print("Sending to Twitter: \(message)")
    } else {
        print("Your message was empty.")
    }
}
// Parameters to closures don't have external names, and must have a type specified
let rowBoat = { (distance: Int) in
    for _ in 1...distance {
        print("I'm rowing 1km.")
    }
}
rowBoat(5)

// Returning values from a closure
var flyDrone = { (hasPermit: Bool) -> Bool in
    if hasPermit {
        print("Let's find somewhere safe!")
        return true
    }
    print("That's against the law.")
    return false
}
// valid
let measureSize = { (inches: Int) -> String in
    switch inches {
    case 0...26:
        return "XS"
    case 27...30:
        return "S"
    case 31...34:
        return "M"
    case 35...38:
        return "L"
    default:
        return "XL"
    }
}
measureSize(36)

// valid
var difficultyRating = { (trick: String) -> Int in
    if trick == "ollie" {
        return 1
    } else if trick == "Yoyo Plant" {
        return 3
    } else if trick == "900" {
        return 5
    } else {
        return 0
    }
}
print(difficultyRating("ollie"))

//valid
var costToShootMovie = { (location: String) -> Int in
    if location == "UK" {
        return 1_000_000
    } else if location == "US" {
        return 5_000_000
    } else {
        return 500_000
    }
}
