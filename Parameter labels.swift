
import UIKit

// If you want to return two or more values from a function, you can choose tuple as the best option.

/* tuples let us put multiple pieces of data into a single variable, but unlike
 those other options tuples have a fixed size and can have a variety of data types.
 */
func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Luka", lastName: "Modric")
}

let user = getUser()

let firstName = user.firstName
let lastName = user.lastName

print("Name: \(firstName) \(lastName)")

/* sometimes you’ll find you’re given tuples where the elements don’t have names.
 When this happens you can access the tuple’s elements using numerical indices starting from 0
*/

func totalUser() -> (String, String) {
    ("Taylor", "Swift")
}

// These numerical indices are also available with tuples that have named elements, but I’ve always found using names preferable.

let givenUser = totalUser()
print("Name: \(givenUser.0) \(givenUser.1)")

// can write line 13 like below.we can pull apart the return value from getUser() into two separate constants.
func takenUser() -> (name1: String, name2: String) {
    (name1: "Luka", name2: "Modric")
}

let (name1, name2) = takenUser()
print("Name: \(name1) \(name2)")

// In fact, if you don’t need all the values from the tuple you can go a step further
// by using _ to tell Swift to ignore that part of the tuple:
func comingUser() -> (name3: String, name4: String) {
    (name3: "Luka", name4: "Modric")
}

let (name3, _) = comingUser()
print("Name: \(name3)")

/* write a function to roll a dice a certain number of times, using parameters to
 control the number of sides on the dice and the number of rolls
*/
func rollDice(sides: Int, count: Int) -> [Int] {
    // Start with an empty array
    var rolls = [Int]()

    // Roll as many dice as needed
    for _ in 1...count {
        // Add each result to our array
        let roll = Int.random(in: 1...sides)
        rolls.append(roll)
    }

    // Send back all the rolls
    return rolls
}

let rolls = rollDice(sides: 6, count: 6)

print(rolls)

/* This method of naming parameters for external use is so important to Swift that it actually
 uses the names when it comes to figuring out which method to call
*/

/* To distinguish between the various options, it’s very common to see documentation
 refer to each function including its parameters
*/

func hireEmployee(name: String) { }
func hireEmployee(title: String) { }
func hireEmployee(location: String) { }

// think about the hasPrefix() function.
let lyric = "I see a red door and I want it painted black"
print(lyric.hasPrefix("I see"))

/* If we add an underscore before the parameter name, we can remove the external parameter label */
func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result = isUppercase(string)
print(result)

/* This is used a lot in Swift, such as with append() to add items to an array, or contains()
 to check whether an item is inside an array – in both places it’s pretty evident what the parameter
 is without having a label too.
*/


// We write for number: Int: the external name is for, the internal name is number, and it’s of type Int.
// When we call the function we use the external name for the parameter: printTimesTables(for: 5)
// That reads much better at the call site – you can literally say “print times table for 5” aloud, and it makes sense.
func printTimesTables(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5)

// The main reason for skipping a parameter name is when your function name is a verb and the first parameter is a noun the verb is acting on.

// valid swift code
func sumItems(_ items: [Int]) -> Int {
    var total = 0
    for item in items {
        total += item
    }
    return total
}

//valid swift code
func printLogMessage(message: String) -> Bool {
    print("Log: \(message)")
    return true
}
printLogMessage(message: "hello")

//valid swift code
func bounceOnTrampoline(times: Int) {
    for _ in 1...times {
        print("Boing!")
    }
}
bounceOnTrampoline(times: 10)

//valid swift code
func greet(_ name: String) {
    print("Hi, \(name)!")
}
greet("aman")

// valid swift code
func countPoodles(_ dogs: [String]) -> Int {
    var sum = 0
    for dog in dogs {
        if dog == "Poppy" {
            sum += 1
        }
    }
    return sum
}
countPoodles(["Mollie", "Penny", "Poppy"])
print(countPoodles(["Mollie", "Penny", "Poppy"]))

// valid swift code
func climbMountain(_ name: String) {
    print("I'm going to climb \(name).")
}
climbMountain("Everest")

// code cannot be attempts to return a value from a function that doesn't return anything.

//valid swift code
func square(_ number: Int) -> Int {
    return number * number
}
square(5)
print(square(10))

// valid swift code
func evaluateJavaScript(_ input: String) {
    print("Yup, that's JavaScript alright.")
}

