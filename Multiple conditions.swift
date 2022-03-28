
import UIKit

enum Sizes: Comparable {
    case small
    case medium
    case large
}

/* That will print “true”, because small comes before large in the enum case list. */

let first = Sizes.small
let second = Sizes.large
print(first < second)

/* that’s not very efficient if you think about it: our two conditions are mutually exclusive,
 because if someone is greater than or equal to 18 (the first condition) then they can’t be less
 than 18 (the second condition), and the opposite is also true.
 We’re making Swift do work that just isn’t needed. */
let votingAge = 16

if votingAge >= 18 {
    print("You can vote in the next election.")
}

if votingAge < 18 {
    print("Sorry, you're too young to vote.")
}

/* add an else block to our code – some code to run if the condition is not true. */
let age = 16

if age >= 18 {
    print("You can vote in the next election.")
} else {
    print("Sorry, you're too young to vote.")
}

/* else if, which lets you run a new check if the first one fails. You can have just one
    of these if you want, or have multiple else if, and even combine else if with an else if needed.
    However, you can only ever have one else, because that means “if all the other conditions have been false
*/

let a = false
let b = true

if a {
    print("Code to run if a is true")
} else if b {
    print("Code to run if a is false but b is true")
} else {
    print("Code to run if both a and b are false")
}

/* Swift provides a shorter alternative: we can use && to combine two conditions together, and the whole condition will only be true if the two parts inside the condition are true. */

let temp = 25

if temp > 20 && temp < 30 {
    print("It's a nice day.")
}

/* && has a counterpart that is two pipe symbols, ||, which means “or”. Whereas && will
 only make a condition be true if both subconditions are true, || will
 make a condition be true if either subcondition is true.
 */

let userAge = 14
let hasParentalConsent = true

if userAge >= 18 || hasParentalConsent == true {
    print("You can buy the game")
}

/* To finish up with checking multiple conditions, let’s try a more complex example
 that combines if, else if, else, and || all at the same time, and even shows off how enums fit into conditions.
*/

enum TransportOption {
    case airplane, helicopter, bicycle, car, scooter
}

let transport = TransportOption.car

if transport == .airplane || transport == .helicopter {
    print("Let's fly!")
} else if transport == .bicycle {
    print("I hope there's a bike path…")
} else if transport == .car {
    print("Time to get stuck in traffic.")
} else {
    print("I'm going to hire a scooter now!")
}
