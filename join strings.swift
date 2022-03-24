import UIKit

/* Swift gives us two ways to combine strings together:
 joining them using +, and a special technique called string
 interpolation that can place variables of any type directly inside strings.
 */

let firstName = "Aman "
let lastName = "Sharma"

let fullName = firstName + lastName
print(fullName)

/* Notice how we’re using + to join two strings, but when we used Int and Double
 it added numbers together? This is called operator overloading – the ability for
 one operator such as + to mean different things depending on how it’s used.
 For strings, it also applies to +=, which adds one string directly to another.
 */

let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action
print(lyric)

/* Swift can’t join all those strings in one go. Instead, it will join the first two to make “12”,
 then join “12” and “3” to make “123”, then join “123” and “4” to make “1234”, and finally join
 “1234” and “5” to make “12345” – it makes temporary strings to hold “12”, “123”, and “1234”
 even though they aren’t ultimately used when the code finishes.
 */

let luggageCode = "1" + "2" + "3" + "4" + "5"
print(luggageCode)

/* Swift has a better solution called string interpolation, and it lets us efficiently
 create strings from other strings, but also from integers, decimal numbers, and more.
 */

/* For example, we could create one string constant and one integer constant,
 then combine them into a new string:
*/

let name = "Aman"
let age = 22
let message = "Hello, my name is \(name) and I'm \(age) years old."
print(message)

/* You can put calculations inside string interpolation if you want to. For example,
 this will print “5 x 5 is 25”:
 */
print("5 x 5 is \(5 * 5)")

/* uses string interpolation to create a string variable called name. */
var goodName = "\(firstName) \(lastName)"
print(goodName)


