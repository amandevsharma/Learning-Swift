
import UIKit

/* Things go wrong all the time, such as when that file you wanted to read doesn’t exist, or when
 that data you tried to download failed because the network was down.
*/
// Telling Swift about the possible errors that can happen.
// Writing a function that can flag up errors if they happen.
// Calling that function, and handling any errors that might happen.

// check how strong their password is, we’ll flag up a serious error if the password is too short or is obvious.

// making a new enum that builds on Swift’s existing Error type
enum PasswordError: Error {
    case short, obvious
}
// function is able to throw errors without handling them itself, you must mark the function as throws before the return type.
func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }

    if password == "12345" {
        throw PasswordError.obvious
    }

    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}


/* when it comes to working with real Swift projects you’ll find there are three steps */

//        do {
//            try someRiskyWork()
//           }          catch {
//          print("Handle errors here")
//              }
//

/* If we wanted to write try that using our current checkPassword() function, we could write this: */

/* When it comes to catching errors, you must always have a catch block that is able
 to handle every kind of error. However, you can also catch specific errors as well
*/

/* try. This must be written before calling all functions that might throw errors, and is a visual
 signal to developers that regular code execution will be interrupted if an error happens.
*/

/* use try, you need to be inside a do block, and make sure you have one or more catch blocks able to handle any errors. */
let string = "12"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}

/*  throwing functions are baked into many of Apple’s own frameworks, so even though you might not create
 them yourself much you will at least need to know how to use them safely.
*/

/* when you’re learning start small: keep the number of throwing functions low, and work outwards from there.
 Over time you’ll get a get better grip on managing errors to keep your program flow smooth, and you’ll
 feel more confident about adding throwing functions.
*/

/* Using Swift’s throwing functions relies on three unique keywords: do, try, and catch.
 We need all three to be able to call a throwing function,
*/

//valid swift code
enum BuildingError: Error {
    case tooHigh
    case tooLow
}

func constructBuilding(floors: Int) throws {
    if floors < 10 {
        throw BuildingError.tooLow
    } else if floors > 500 {
        throw BuildingError.tooHigh
    }
    print("Perfect - let's get building!")
}
try constructBuilding(floors: 10)

// valid swift code
enum PlayError: Error {
    case cheating
    case noPlayers
}
func playGame(name: String, cheat: Bool = false) throws {
    if cheat {
        throw PlayError.cheating
    } else {
        print("Let's play a game of \(name)...")
    }
}

//valid swift code
enum AgeError: Error {
    case underAge
    case unknownAge
}
func buyAlcohol(age: Int) throws {
    if age >= 18 {
        print("OK.")
    } else {
         print("you are \(AgeError.underAge)")
    }
}
try buyAlcohol(age: 17)


//valid swift code
enum PizzaErrors: Error {
    case hasPineapple
}
func makePizza(type: String) throws {
    if type != "Hawaiian" {
        print("Your pizza will be ready in 10 minutes.")
    } else {
        throw PizzaErrors.hasPineapple
    }
}
try makePizza(type: "olives")

// valid swift code
enum MeasureError: Error {
    case unknownItem
}

func measure(itemName: String) throws -> Double {
    switch itemName {
    case "bookcase":
        return 2.0
    case "chair":
        return 1.0
    case "child":
        return 1.3
    case "adult":
        return 1.75
    default:
    return 0
    }

}
print(try measure(itemName: "chair"))

// valid swift code
// an enum must conform to Error.
enum ChargeError: Error {
    case noCable
    case noPower
}
func chargePhone(atHome: Bool) throws {
    if atHome {
        print("Phone is charging...")
    } else {
        throw ChargeError.noCable
    }
}

// valid swift code
enum WifiError: Error {
    case noNetwork
    case noSignal
}
func connectToWifi(_ password: String) throws {
    if password == "" {
        throw WifiError.noNetwork
    }
    print("You're connected.")
}

//valid swift code
enum PrintError: Error {
    case invalidCount
}
func printPages(text: String, count: Int) throws {
    if count <= 0 {
        throw PrintError.invalidCount
    } else {
        for _ in 1...count {
            print("Printing \(text)...")
        }
    }
}
try printPages(text: "hello", count: 4)

//valid swift code
enum LoginError: Error {
    case unknownUser
}
func authenticate(username: String) throws {
    if username == "Anonymous" {
        throw LoginError.unknownUser
    }
    print("Welcome, \(username)!")
}
//
enum BookErrors: Error {
    case tooFewPages
    case tooManyPages
}
func writeBook(title: String, pages: Int) throws {
    switch pages {
    case 0...50:
        throw BookErrors.tooFewPages
    case 51...400:
        print("Perfect! I'm going to write \(title)...")
    default:
        throw BookErrors.tooManyPages
    }
}
try writeBook(title: "mowgli", pages: 100)

//valid swift code
enum ArrayError: Error {
    case negateIndex
}
func readItem(_ index: Int, from array: [String]) throws -> String  {
    if index < 0 {
        throw ArrayError.negateIndex
    }
    return array[index]
}

try readItem(2, from: ["ab","aa", "abc", "acb"])

// valid swift code
enum CatProblems: Error {
    case notACat
    case unfriendly
}
func strokeCat(_ name: String) throws {
    if name == "Mr Bitey" {
        throw CatProblems.unfriendly
    } else if name == "Lassie" {
        throw CatProblems.notACat
    } else {
        print("You stroked \(name).")
    }
}
try strokeCat("tommy")
