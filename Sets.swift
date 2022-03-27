
import UIKit

/* There is a third very common way to group data, called a set – they are similar to arrays,
 except you can’t add duplicate items, and they don’t store their items in a particular order.
*/
let people = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])
print(people)

/* The second important difference when adding items to a set is visible
 when you add items individually.
*/
var famousPeople = Set<String>()
famousPeople.insert("Denzel Washington")
famousPeople.insert("Tom Cruise")
famousPeople.insert("Nicolas Cage")
famousPeople.insert("Samuel L Jackson")

print(famousPeople)

/* Alongside contains(), you’ll also find count to read the number
 of items in a set, and sorted() to return a sorted array containing the the set’s items.
*/

/* Sets are similar to arrays, except they can't
 contain duplicate items and are unordered.
*/
let staffReviews = Set([1, 2, 1, 2, 3])

