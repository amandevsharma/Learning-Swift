
import UIKit

/* Ternary operators work with three pieces of input, and in fact because the ternary conditional
 operator is the only ternary operator in Swift, you’ll often hear it called just “the ternary operator.”
*/

/* ternary operator lets us check a condition and return one of two values:
 something if the condition is true, and something if it’s false.
*/

/* WTF. It stands for “what, true, false”, and matches the order of our code: */

let age = 18
let canVote = age >= 18 ? "Yes" : "No"

/* either the true or false case just gets printed depending on the value of hour.*/

let hour = 23
print(hour < 12 ? "It's before noon" : "It's after noon")

/* Or here’s one that reads the count of an array as part of its condition, then sends back one of two strings: */
let names = ["Jayne", "Kaylee", "Mal"]
let crewCount = names.isEmpty ? "No one" : "\(names.count) people"
print(crewCount)

/* It gets a little hard to read when your condition use == to check for equality, as you can see here: */

enum Theme {
    case light, dark
}

let theme = Theme.dark

let background = theme == .dark ? "black" : "white"
print(background)
