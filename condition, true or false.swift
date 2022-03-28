
import UIKit

/* Swift handles these with if statements, which let us check a condition
 and run some code if the condition is true.
*/
var playerScore = 100
if playerScore == 100 {
    print("High Score")
}

/* That > symbol is a comparison operator, because it compares two things
 and returns a Boolean result: is the thing on the left greater
 than the thing on the right? You can also use < for less than, >= for “greater than
 or equal”, and <= for “less than or equal.”
*/

let speed = 88
let percentage = 85
let age = 18

if speed >= 88 {
    print("Where we're going we don't need roads.")
}

if percentage < 85 {
    print("Sorry, you failed the test.")
}

if age >= 18 {
    print("You're eligible to vote")
}

/*
 if the user entered a name that comes after their friend’s name
 alphabetically, put the friend’s name first.
 You’ve seen how <, >= and others work great with numbers,
 but they also work equally well with strings right out of the box:
*/

let ourName = "Dave Lister"
let friendName = "Arnold Rimmer"

if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
}

if ourName > friendName {
    print("It's \(friendName) vs \(ourName)")
}

/* if adding a number to an array makes it contain more than 3 items,
 remove the oldest one. You’ve already met append(), count, and remove(at:),
 so we can now put all three together with a condition like this:
*/

// Make an array of 3 numbers
var numbers = [1, 2, 3]

// Add a 4th
numbers.append(4)

// If we have over 3 items
if numbers.count > 3 {
    // Remove the oldest number
    numbers.remove(at: 0)
}

// Display the result
print(numbers)

/* handle equality. The first is == and means “is equal to,” */
let country = "Canada"

if country == "Australia" {
    print("G'day!")
}

/* The second is !=, which means “is not equal to”, */
let name = "Taylor Swift"

if name != "Anonymous" {
    print("Welcome, \(name)")
}

/* In our case, we want to check whether the username entered by the user is empty,
 which we could do like this:
*/

// Create the username variable
var username = ""

// If `username` contains an empty string
if username == "" {
    // Make it equal to "Anonymous"
    username = "Anonymous"
}

// Now print a welcome message
print("Welcome, \(username)!")

/* we could compare the count of the string – how many letters it has – against 0, */
if username.count == 0 {
    username = "Anonymous"
}
print(username.count)

/* Swift adds a second piece of functionality to all its strings, arrays, dictionaries,
 and sets: isEmpty. This will send back true if the thing you’re checking
 has nothing inside, and we can use it to fix our condition
*/

if username.isEmpty == true {
    username = "Anonymous"
}

/*  ultimately what matters is that your condition must boil down
to either true or false; Swift won’t allow anything else */

if username.isEmpty {
    username = "Anonymous"
}
