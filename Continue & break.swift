
import UIKit

/* Swift gives us two ways to skip one or more items in a loop:
 continue skips the current loop iteration, and break skips
 all remaining iterations
*/

/* That creates an array of filename strings, then loops over each one and checks
 to make sure it has the suffix “.jpg” – that it’s a picture. continue is used with all
 the filenames failing that test, so that the rest of the loop body is skipped.
*/

let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }

    print("Found picture: \(filename)")
}

/* As for break, that exits a loop immediately and skips all remaining iterations.
 To demonstrate this, we could write some code to calculate 10 common multiples for two numbers
*/

/* If i is a multiple of both the first and second numbers, append it to the integer array.
 Once we hit 10 multiples, call break to exit the loop.
 Print out the resulting array.
 */
let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)

        if multiples.count == 10 {
            break
        }
    }
}

print(multiples)

/* use continue when you want to skip the rest of the current loop iteration, and use
 break when you want to skip all remaining loop iterations
*/

/* if you had an array of scores and you want to figure
 out how many of them the player achieved without getting a 0,
*/

let scores = [1, 8, 4, 3, 0, 5, 2]
var count = 0

for score in scores {
    if score == 0 {
        break
    }

    count += 1
}

print("You had \(count) scores before you got 0.")
