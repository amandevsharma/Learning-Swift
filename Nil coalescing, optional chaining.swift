import UIKit

// it’s called the nil coalescing operator and it lets us unwrap an optional and provide a default value if the optional was empty.
let captains = [
    "Enterprise": "Picard",
    "Voyager": "Janeway",
    "Defiant": "Sisko"
]

//  nil coalescing operator,
let new = captains["Serenity"] ?? "N/A"

//want to provide a sensible default
struct Book {
    let title: String
    let author: String?
}

let book = Book(title: "Beowulf", author: nil)
let author = book.author ?? "Anonymous"
print(author)

//
let input = ""
let number = Double(input) ?? 0.0
print(number)

/* the nil coalescing operator is useful anywhere you have an optional and want to use the value inside or provide a default value if it’s missing.
 */
//You can choose whichever you prefer – when reading dictionary values there’s no real difference.

//
let planetNumber: Int? = 426
var destination = planetNumber ?? 3
//
let distanceRan: Double? = 5.0
let distance: Double = distanceRan ?? 3

print(distance)

// handle multiple optionals using optional chaining
let names = ["Arya", "Bran", "Robb", "Sansa"]

let chosen = names.randomElement()?.uppercased() ?? "No one"
print("Next in line: \(chosen)")

/* Optional chaining makes for a very good companion to nil coalescing, because it allows you
 to dig through layers of optionals while also providing a sensible fall back if any of the optionals are nil
*/
//
let songs: [String]? = [String]()
let finalSong = songs?.last?.uppercased()
//
func albumReleased(in year: Int) -> String? {
    switch year {
    case 2006: return "Taylor Swift"
    case 2008: return "Fearless"
    case 2010: return "Speak Now"
    case 2012: return "Red"
    case 2014: return "1989"
    case 2017: return "Reputation"
    default: return nil
    }
}
let album = albumReleased(in: 2006)?.uppercased()

//
let favoriteColors = ["Paul": "Red", "Charlotte": "Pink"]
let charlotteColor = favoriteColors["Charlotte"]?.lowercased()
//
let racers = ["Hamilton", "Verstappen", "Vettel"]
let winnerWasVE = racers.first?.hasPrefix("Ve")
