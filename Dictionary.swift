
import UIKit

/* Dictionaries don’t store items according to their position like arrays do,
 but instead let us decide where items should be stored.
*/

/* Swift calls the strings on the left – name, job, and location – the keys to the dictionary,
 and the strings on the right are the values.
*/

let employee = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]

/* When it comes to reading data out from the dictionary, you use the same keys you
 used when creating it:
*/

/* All of that is valid Swift code, but we’re trying to read dictionary keys
 that don’t have a value attached to them
*/


/* Swift provides an alternative: when you access data inside a dictionary,
 it will tell us “you might get a value back, but you might get back nothing at all.”
 Swift calls these optionals because the existence of data is optional
 - it might be there or it might not.
*/

/* when reading from a dictionary, you can provide a default value to use if the key doesn’t exist. */
print(employee["name", default: "Unknown"])
print(employee["job", default: "Unknown"])
print(employee["location", default: "Unknown"])

/* which students have graduated from school using strings for names and Booleans
 for their graduation status:
*/

let hasGraduated = [
    "Eric": false,
    "Maeve": true,
    "Otis": false,
]

print(hasGraduated["Eric", default: true])
print(hasGraduated["Maeve", default: false])

/* create an empty dictionary using whatever explicit types you want to store, then set keys one by one: */
var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206

/* dictionaries don’t allow duplicate keys to exist. Instead,
 if you set a value for a key that already exists, Swift will overwrite whatever was the previous value.
*/
var archEnemies = [String: String]()
archEnemies["Batman"] = "The Joker"
archEnemies["Superman"] = "Lex Luthor"

/* If your friend disagrees that The Joker is Batman’s arch-enemy,
 you can just rewrite that value by using the same key:
*/

archEnemies["Batman"] = "Penguin"

print(archEnemies)

/* some useful functionality that you’ll want to use in the future – count and
 removeAll() both exists for dictionaries, and work just like they do for arrays.
*/

/* Trying to read a dictionary using a key that doesn't exist is valid, but won't return any data.
*/

let planets = [1: "Mercury", 2: "Venus"]
let venus = planets[2, default: "Planet X"]
