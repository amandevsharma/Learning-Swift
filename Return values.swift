
import UIKit

/* functions often also send data back – they perform some computation, then return the result of that work back to the call site. */

/* The sqrt() function accepts one parameter, which is the number we want to calculate
 the square root of, and it will go ahead and do the work then send back the square root.
 */
let root = sqrt(169)
print(root)

// If you want to return your own value from a function, you need to do two things:

// Write an arrow then a data type before your function’s opening brace, which tells Swift what kind of data will get sent back.
// Use the return keyword to send back your data.
func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)

func areLettersIdentical(string1: String , string2: String) -> Bool {
    let first = string1.sorted()
    let second = string2.sorted()
        return first == second
}

areLettersIdentical(string1: "abc", string2: "cab")

print(areLettersIdentical(string1: "abc", string2: "cab"))

// only works when your function contains a single line of code, and in particular
// that line of code must actually return the data you promised to return.
func areTheyIdentical(string1: String, string2: String) -> Bool {
    string1.sorted() == string2.sorted()
}
print(areTheyIdentical(string1: "acb", string2: "cba"))

func rollTheDice() -> Int {
    Int.random(in: 1...6)
}
print(rollTheDice())

//we can build a pythagoras() function that accepts two decimal numbers and returns another one:

func pythagoras(a: Double, b: Double) -> Double {
    let input = a * a + b * b
    let root = sqrt(input)
    return root
}

let c = pythagoras(a: 3, b: 4)
print(c)

/*  if your function doesn’t return a value, you can still use return by itself to
 force the function to exit early. For example, perhaps you have a check that the input
 matches what you expected, and if it doesn’t you want to exit the function immediately before continuing.
*/

//  when we’re performing actions such as creating variables, starting a loop, or checking a condition, then we call that a statement.
// we need return keyword

/* Letting us put conditional functionality into a single line of code is where the ternary operator
 really shines. And, because SwiftUI uses single expression functions quite a lot, this
 means ternary operators get used in SwiftUI quite a lot too.
*/
func greet(name: String) -> String {
    name == "Taylor Swift" ? "Oh wow!" : "Hello, \(name)"
}
print(greet(name: "Taylor Swift"))

//valid swift code
func read(books: [String]) -> Bool {
    for book in books {
        print("I'm reading \(book)")
    }
    return true
}
read(books: ["mowgli","hatim", "zorro"])

// valid swift code
func writeToLog(message: String) -> Bool {
    if message != "" {
        print("Log: \(message)")
        return true
    } else {
        return false
    }
}
writeToLog(message: "I'm on my way")

//valid swift code
func burnCandles(count: Int) -> Int {
    for _ in 1...count {
        print("I'm lighting a candle")
    }
    return count
}
burnCandles(count: 5)

//valid swift code

func paintHouse(color: String) -> Bool {
    if color == "tartan" {
    }
    return true
}
print(paintHouse(color: "tartan"))

//valid swift code
func format(number: Int) -> String {
    return "The number is \(number)"
}
print(format(number: 5))

//valid swift code
func countMultiplesOf10(numbers: [Int]) -> Int {
    var result = 0
    for number in numbers {
        if number % 10 == 0 {
            result += 1
        }
    }
    return result
}
countMultiplesOf10(numbers: [5, 10, 15, 20, 25])
print(result)

//valid swift code

func giveDog(food: String) -> String {
    if food == "treat" {
        print("The dog at the \(food)")
    } else {
       print("The dog stared in disgust")

    }
    return food
}
(giveDog(food: "treat"))

//valid swift code
func estimateCost(units: Int) -> Int {
    
    switch units {
    case 0...10:
        return units * 9
    case 11...50:
        return units * 8
    case 51...100:
        return units * 7
    default:
        return units
    }
}
estimateCost(units: 10)
//
func allTestsPassed(tests: [Bool]) -> Bool {
    for test in tests {
        if test == true {
            return false
        }
    }
    return false
}
allTestsPassed(tests: [true,true, true])
print(allTestsPassed(tests: [true,true,true]))

// valid swift code
func isEveryoneAdult(ages: [Int]) -> Bool {
    for age in ages {
        if age < 18 {
            return false
        }
    }
    return true
}
isEveryoneAdult(ages: [10, 20, 16, 24])
