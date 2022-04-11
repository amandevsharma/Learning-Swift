import UIKit

/* way of ensuring predictability called optionals – a word meaning “this thing might have a value or might not.” */

/* This is also a bit confusing when you think about empty strings, “”. That string contains
 nothing, but that isn’t the same thing as nil – an empty string is still a string.
*/
let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]

let peachOpposite = opposites["Peach"]

// unwrapping optionals, but the one you’ll see
if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
}

/* the optional integer needs to be unwrapped – we can’t use an optional value where a non-optional is needed */

var username: String? = nil

if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
} else {
    print("The optional was empty.")
}

//
func square(number: Int) -> Int {
    number * number
}

var number: Int? = nil

/* it’s very common to unwrap them into a constant of the same name.v*/
if let number = number {
    print(square(number: number))
}

//  function returns an optional string, which means it could be a string or it could be nil.
func getUsername() -> String? {
    "Taylor"
}

if let username = getUsername() {
    print("Username is \(username)")
} else {
    print("No username")
}

// The code inside if let will only be run if there was a value inside your optional.

var favoriteMovie: String? = nil
favoriteMovie = "The Life of Brian"
if let movie = favoriteMovie {
    print("Your favorite movie is \(movie).")
} else {
    print("You don't have a favorite movie.")
}
//
let song: String? = "Shake it Off"
if let unwrappedSong = song {
    print("The name has \(unwrappedSong.count) letters.")
}
//
let currentDestination: String? = nil
if let destination = currentDestination {
    print("We're walking to \(destination).")
} else {
    print("We're just wandering.")
}

//
let album = "Red"
let albums = ["Reputation", "Red", "1989"]
if let position = albums.firstIndex(of: album) {
    print("Found \(album) at position \(position).")
}

//
let favoriteTennisPlayer: String? = "Andy Murray"
if let player = favoriteTennisPlayer {
    print("Let's watch \(player)'s highlights video on YouTube.")
}

//
var winner: String? = nil
winner = "Daley Thompson"
if let name = winner {
    print("And the winner is... \(name)!")
}

