import UIKit

// important feature called opaque return types, which let us remove complexity in our code

//  Bool.random() returns either true or false

func getRandomNumber() -> Int {
    Int.random(in: 1...6)
}
print(getRandomNumber())

func getRandomBool() -> Bool {
    Bool.random()
}
print(getRandomBool())


print(getRandomNumber() == getRandomNumber())

/*
 when you see some View in your SwiftUI code, it’s effectively us telling
 Swift “this is going to send back some kind of view to lay out, but I don’t want
 to write out the exact thing – you figure it out for yourself.”
*/

func getTheRandomNumber() -> some Equatable {
    Int.random(in: 1...6)
}

func getTheRandomBool() -> some Equatable {
    Bool.random()
}

print(getRandomNumber() == getRandomNumber())

/*
 where opaque return types come in: they let us hide information
 in our code, but not from the Swift compiler. This means we reserve the right to make our code
 flexible internally so that we can return different things in the future, but Swift always understands the actual data type being returned and will check it appropriately.
*/
