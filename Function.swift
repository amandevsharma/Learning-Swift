
import UIKit

/* Functions let us wrap up pieces of code so they can be used in lots of places.
 We can send data into functions to customize how they work, and get back data that tells us the result that was calculated.
*/

/* Functions are just chunks of code you’ve split off from the rest of your program, and
 given a name so you can refer to them easily.
*/

func showWelcome() {
    print("Welcome to my app!")
    print("By default This prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want.")
}

/* random() is a function, and the (in: 1...20) part marks configuration options – without that we’d
 have no control over the range of our random numbers, which would be significantly less useful.
*/
let roll = Int.random(in: 1...20)
print(roll)

/* the function’s call site, which is a fancy name meaning “a place where a function is called.” */

/* what do the parentheses actually do? Well, that’s where we add configuration options
 for our functions – we get to pass in data that customizes the way the function works, so
 the function becomes more flexible.
*/
let number = 139

if number.isMultiple(of: 2) {
    print("Even")
} else {
    print("Odd")
}

/* make our own functions that are open to configuration, all by putting
 extra code in between the parentheses when we create our function
*/
func printTimesTables(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5)

/* This naming of parameters becomes even more important
 when you have multiple parameters
*/

func displayTimesTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

displayTimesTables(number: 5, end: 20)

/*  Any data you create inside a function is automatically destroyed when the function is finished. */


func count(to: Int) {
    for i in 1...to {
        print("I'm counting: \(i)")
    }
}

count(to: 3)

// valid swift code
func listOriginalStarWarsMovies() {
    for i in 4...6 {
        print("Episode \(i)")
    }
}

// valid swift code
func check(age: Int) {
    if age >= 18 {
        print("You're an adult.")
    } else {
        print("You're a minor.")
    }
}
check(age: 18)

// valid swift code
func square(numbers: [Int]) {
    for number in numbers {
        let squared = number * number
        print("\(number) squared is \(squared).")
    }
}
square(numbers: [2, 3, 4])

// valid swiftcode
func makeBand(names: [String]) {
    print("Let's start a band...")
    for name in names {
        print("\(name) wants to join!")
    }
}
makeBand(names: ["John", "Paul"])
