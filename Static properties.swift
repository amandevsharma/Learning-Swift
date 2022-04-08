import UIKit

//only sometimes – you want to add a property or method to the struct itself, rather than to one
// particular instance of the struct, which allows you to use them directly.
//Notice the keyword static in there
struct School {
    static var studentCount = 0

    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}

School.add(student: "Taylor Swift")
print(School.studentCount)
//tatic properties to organize common data in my apps.
struct AppData {
    static let version = "1.3 beta 2"
    static let saveFilename = "settings.json"
    static let homeURL = "https://www.hackingwithswift.com"
}
//whenever you need an Employee instance to work with in your design previews, you can use Employee.example
struct Employee {
    let username: String
    let password: String

    static let example = Employee(username: "cfederighi", password: "hairforceone")
}

//Static properties and methods must be called on the struct that owns them, rather than on instances of that struct.
struct NewsStory {
    static var breakingNewsCount = 0
    static var regularNewsCount = 0
    var headline: String
    init(headline: String, isBreaking: Bool) {
        self.headline = headline
        if isBreaking {
            NewsStory.breakingNewsCount += 1
        } else {
            NewsStory.regularNewsCount += 1
        }
    }
}
//valid swift code
struct Person {
    static var population = 10
    var name: String
    init(personName: String) {
        name = personName
        Person.population += 1
    }
    
}
print(Person.init(personName: "Hitman"))

//valid swift code
struct Pokemon {
    static var numberCaught = 0
    var name: String
    static func catchPokemon() {
        print("Caught!")
        Pokemon.numberCaught += 1
    }
}
// valid swift code
// declare as a static property to call on the struct
struct Raffle {
     var ticketsUsed = 0
    var name: String
    var tickets: Int
    init(name: String, tickets: Int, ticketsUsed: Int) {
        self.name = name
        self.tickets = tickets
        self.ticketsUsed = ticketsUsed
    }
}

let winner = Raffle(name: "Aman", tickets: 20, ticketsUsed: 10)
print(winner.name)
print(winner.tickets)
print(winner.ticketsUsed)

