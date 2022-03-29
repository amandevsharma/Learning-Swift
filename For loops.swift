
import UIKit

/* Computers are really great at doing repetitive work, and Swift makes it easy to repeat some
 code a fixed number of times, or once for every item in an array, dictionary, or set.
*/
let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works great on \(os).")
}

/* We call os the loop variable. This exists only inside the loop body, and will change to a new value in the next loop iteration. */
for platform in platforms {
    print("Swift works great on \(platform).")
}

/* Rather than looping over an array (or set, or dictionary – the syntax is the same!),
 you can also loop over a fixed range of numbers. For example,
 we could print out the 5 times table from 1 through 12 like this
*/
for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}

/* You can also put loops inside loops, called nested loops, */
for i in 1...12 {
    print("The \(i) times table:")

    for j in 1...12 {
        print(" \(j) x \(i) is \(j * i)")
    }

    print()
}

/* Swift has a similar-but-different type of range that counts up to but excluding the final number: ..<. */
for i in 1...5 {
    print("Counting from 1 through 5: \(i)")
}

print()

for i in 1..<5 {
    print("Counting 1 up to 5: \(i)")
}

/* don’t actually want the loop variable – you don’t want the i or j, because you don’t use it. */
/* In this situation, you can replace the loop variable with an underscore */
var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}

print(lyric)

/* if you don’t use a loop variable inside the body, Swift will warn you to rewrite it like */
let names = ["Sterling", "Cyril", "Lana", "Ray", "Pam"]

for _ in names {
    print("[CENSORED] is a secret agent!")

}

/* we can use a one-sided range to say “give me 1 to the end of the array */
let people = ["Piper", "Alex", "Suzanne", "Gloria"]
print(people[0...])

