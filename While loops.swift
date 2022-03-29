
import UIKit

/* second kind of loop called while: provide it with a condition, and a while loop will continually
 execute the loop body until the condition is false.
*/

/* while loops are really useful when you just don’t know how many times the loop will go around */

var countdown = 10

while countdown > 0 {
    print("\(countdown)…")
    countdown -= 1
}

print("Blast off!")

/* I want to introduce you to a really useful piece of functionality that Int and Double
 both have: random(in:). Give that a range of numbers to work with, and it will send back a random Int or Double
 somewhere inside that range.
*/

let id = Int.random(in: 1...1000)
print(id)

let amount = Double.random(in: 0...1)
print(amount)

/* We can use this functionality with a while loop to roll some virtual 20-sided dice again and again,
 ending the loop only when a 20 is rolled – a critical hit for all you Dungeons & Dragons players out there.
*/

// create an integer to store our roll
var roll = 0

// carry on looping until we reach 20
while roll != 20 {
    // roll a new dice and print what it was
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}

// if we're here it means the loop ended – we got a 20!
print("Critical hit!")

/* You’ll find yourself using both for and while loops in your own code:
 for loops are more common when you have a finite amount of data to go through,
 such as a range or an array, but while loops are really helpful when you need a custom condition.
 */

let colors = ["Red", "Green", "Blue", "Orange", "Yellow"]
var colorCounter = 0
while colorCounter < 5 {
    print("\(colors[colorCounter]) is a popular color.")
    colorCounter += 1
}

var counter = 2
while counter <= 64 {
    print("\(counter) is a power of 2.")
    counter *= 2
}

var cats: Int = 0
while cats < 10 {
    cats += 1
    print("I'm getting another cat.")
    if cats == 4 {
        print("Enough cats!")
        cats = 10
    }
}

var itemsSold: Int = 0
while itemsSold < 5000 {
    itemsSold += 100
    if itemsSold % 1000 == 1000 {
        print("\(itemsSold) items sold - a big milestone!")
    } else {
        print("\(itemsSold) items sold - This is more awesome!")
    }
}
