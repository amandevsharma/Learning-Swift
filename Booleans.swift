import UIKit

/* Both hasSuffix() and isMultiple(of:) return a new value based on their check:
 either the string has the suffix or it doesn’t, and either 120
 is a multiple of 3 or it isn’t. In both places there’s always a simple
 true or false answer, which is where Booleans come in – they
 store just that, and nothing else.
 */
let imageName = "windows.png"
print(imageName.hasSuffix(".png"))

let number = 120
print(number.isMultiple(of: 3))

/* Making a Boolean is just like making the other data types,
 except you should assign an initial value of either
 true or false, like this:
 */
let goodDays = true

let unproductiveDays = false

/* You can also assign a Boolean’s initial value from some other code,
 as long as ultimately it’s either true or false:
 */
let isMultiple = 120.isMultiple(of: 10)

/* Booleans do have one special operator, !, which means “not”.
 This flips a Boolean’s value from true to false, or false to true.
 */
var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)
isAuthenticated = !isAuthenticated
print(isAuthenticated)

/* Booleans do have a little extra functionality that can be useful.
 In particular, if you call toggle() on a Boolean it will flip a true
 value to false, and a false value to true. To try this out,
 try making gameOver a variable and modifying it like this:
 */
var gameOver = false
print(gameOver)

gameOver.toggle()
print(gameOver)


