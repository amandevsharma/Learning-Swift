
import UIKit

/*
 sometimes we don’t want to assign a value immediately, or
sometimes we want to override Swift’s choice of type, and
 that’s where type annotations come in.
*/

/*
 This uses type inference: Swift infers that surname is a string because we’re assigning text to it, and then infers that score is an integer because we’re assigning a whole number to it.
*/
let surname = "Lasso"
var score = 0

/* Type annotations let us be explicit about what data types we want */
let lastname: String = "Lasso"
var highscore: Int = 0

/* maybe score is a decimal because the user can get half points */
var lowcore: Double = 0

/* String holds text: */
let playerName: String = "Roy"

/* Int holds whole numbers */
var luckyNumber: Int = 13

/* Double holds decimal numbers*/
let pi: Double = 3.141

/* Bool holds either true or false */
var isAuthenticated: Bool = true

/* Array holds lots of different values, all in the order you add them.
 This must be specialized, such as [String]:
 */
var albums: [String] = ["Red", "Fearless"]

/* Dictionary holds lots of different values, where you get to decide
 how data should be accessed. This must be specialized, such as [String: Int]:
*/

var user: [String: String] = ["id": "@twostraws"]

/* Set holds lots of different values, but stores them in an order
 that’s optimized for checking what it contains.
 This must be specialized, such as Set<String>:
*/

var books: Set<String> = Set(["The Bluest Eye", "Foundation", "Girl, Woman, Other"])

/* if you wanted to create an empty array of strings, you’d need to know the type: */
var teams: [String] = [String]()

/* Some people prefer to use type annotation, then assign an empty array to it like this: */
var cities: [String] = []

/* I prefer to use type inference as much as possible, so I’d write this: */
var clues = [String]()

/* Values of an enum have the same type as the enum itself, */
enum UIStyle {
    case light, dark, system
}

var style = UIStyle.light

/* This kind of code requires a type annotation, because
 without an initial value being assigned Swift doesn’t
know what kind of data username will contain.
 */
let username: String
// lots of complex logic
username = "@twostraws"
// lots more complex logic
print(username)

/* Swift must at all times know what data types your constants and variables contain. */

/* challenge: write some code that prints the number of items in the array and also the number of unique items in the array.
 */
var totalLetters = ["a", "b", "c", "d", "e", "f", "g"]
print(totalLetters.count)

var challenge = Set(["ab", "aab", "aba", "ab", "abc", "aba", "acb", "ab", "abc"])
print(challenge)
print(challenge.count)
