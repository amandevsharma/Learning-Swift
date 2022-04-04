
import UIKit

//amount of syntax that comes with closures
//  the function we provide to sorted() must provide two strings and return a Boolean, so why do we need to repeat ourselves in our closure?
let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]

let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
})

print(captainFirstTeam)

//reducing closure
// let captainFirstTeam = team.sorted(by: { name1, name2 in
//  named values that Swift provides for us: $0 and $1, for the first and second strings
let captainOfFirstTeam = team.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }

    return $0 < $1
}

// wanted to do a reverse sort
let reverseTeam = team.sorted {
    return $0 > $1
}
//no fixed rules about when to use shorthand syntax and when not to,
let reverseTheTeam = team.sorted { $0 > $1 }

// The closure’s code is long.
// $0 and friends are used more than once each.
// You get three or more parameters (e.g. $2, $3, etc).
let tOnly = team.filter { $0.hasPrefix("T") }
print(tOnly)

let uppercaseTeam = team.map { $0.uppercased() }
print(uppercaseTeam)

// a function
func animate(duration: Double, animations: () -> Void) {
    print("Starting a \(duration) second animation…")
    animations()
}
//calling a function without trailing closure
animate(duration: 3, animations: {
    print("Fade out the image")
})

//Trailing closures allow us to clean that up, while also removing the animations parameter label.
animate(duration: 3) {
    print("Fade out the image")
}

/* This syntax automatically numbers parameter names as $0, $1, $2, and so on – we can’t use names such as these in our own code, so when you see them it’s immediately clear these are shorthand syntax for closures.
*/

// write functions that accept other functions as parameters.
// a function that generates an array of integers by repeating a function a certain number of times
func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()

    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }

    return numbers
}
print(makeArray(size: 2, using: {
    3
}))

//arbitrary-sized integer arrays
let rolls = makeArray(size: 50) {
    Int.random(in: 1...20)
}

print(rolls)

//same functionality works with dedicated functions too
func generateNumber() -> Int {
    Int.random(in: 1...20)
}

let newRolls = makeArray(size: 50, using: generateNumber)
print(newRolls)

// function that accepts three function parameters, each of which accept no parameters and return nothing:
func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}

/*When it comes to calling that, the first trailing closure is identical to what we’ve used already, but
 the second and third are formatted differently: you end the brace from the previous closure, then write
 the external parameter name and a colon, then start another brace.
*/
doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third work")
}

//Closures as parameters
//all the parameters and return values have the correct types
var playWithDog = {
    print("Fetch!")
}
func play(using playType: () -> Void) -> String {
    print("Let's play a game")
    playType()
    return "hello world"
}

play(using: playWithDog)

//valid
let awesomeTalk = {
    print("Here's a great talk!")
}
func deliverTalk(name: String, type: () -> Void) {
    print("My talk is called \(name)")
    type()
}
deliverTalk(name: "My Awesome Talk", type: awesomeTalk)

//valid
let swanDive = {
    print("SWAN DIVE!")
}
func performDive(type dive: () -> Void) {
    print("I'm climbing up to the top")
    dive()
}
performDive(type: swanDive)

//valid
let helicopterTravel = {
    print("Get to the chopper!")
}
func travel(by travelMeans: () -> Void) {
    print("Let's go on vacation...")
    travelMeans()
}
travel(by: helicopterTravel)

//valid
var payCash = {
    print("Here's the money.")
}
func buyClothes(item: String, using payment: () -> Void) {
    print("I'll take this \(item).")
    payment()
}
buyClothes(item: "jacket", using: payCash)

//valid
var learnWithUnwrap = {
    print("Hey, this is fun!")
}
func learnSwift(using approach: () -> Void) {
    print("I'm learning Swift")
    approach()
}
learnSwift(using: learnWithUnwrap)

//trailing closure syntax
func doTricks(_ tricks: () -> Void) {
    print("Start recording now!")
    tricks()
    print("Did you get all that?")
}

//valid
func tendGarden(activities: () -> Void) {
    print("I love gardening")
    activities()
}
tendGarden {
    print("Let's grow some roses!")
}

//valid
func repeatAction(count: Int, action: () -> Void) {
    for _ in 0..<count {
        action()
    }
}
repeatAction(count: 5) {
    print("Hello, world!")
}

//valid
func goCamping(then action: () -> Void) {
    print("We're going camping!")
    action()
}
goCamping {
    print("Sing songs")
    print("Put up tent")
    print("Attempt to sleep")
}

//valid
func goOnVacation(to destination: String, _ activities: () -> Void) {
    print("Packing bags...")
    print("Getting on plane to \(destination)...")
    activities()
    print("Time to go home!")
}
goOnVacation(to: "Mexico") {
    print("Go sightseeing")
    print("Relax in sun")
    print("Go hiking")
}
