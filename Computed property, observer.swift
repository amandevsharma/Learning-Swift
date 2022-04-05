
import UIKit

// Structs can have two kinds of property: a stored property is a variable or constant
// that holds a piece of data inside an instance of the struct, and a computed property
// calculates the value of the property dynamically every time it’s accessed.

/* we’re losing valuable information – we’re assigning this employee 14 days of vacation
then subtracting them as days are taken, but in doing so we’ve lost how many days they were originally granted.
*/

// both a getter and a setter – fancy names for “code that reads” and “code that writes” respectively.

struct Employee {
    let name: String
    var vacationAllocated = 20
    var vacationTaken = 0
        
        var vacationRemaining: Int {
            get {
                vacationAllocated - vacationTaken
            }

            set {
                vacationAllocated = vacationTaken + newValue
            }
        }
}

var archer = Employee(name: "Sterling Archer", vacationAllocated: 20)
archer.vacationTaken += 0
archer.vacationRemaining = 20
print(archer.vacationAllocated)

// SwiftUI uses computed properties extensively – you’ll see them in the very first project you create!

//valid
struct Wine {
    var age: Int
    var isVintage: Bool
    var price: Int {
        if isVintage {
            return age + 20
        } else {
            return age + 5
        }
    }
}
let malbec = Wine(age: 2, isVintage: true)
print(malbec.price)

//valid
struct Medicine {
    var amount: Int
    var frequency: Int
    var dosage: String {
        return "Take \(amount) pills \(frequency) times a day."
    }
}

//valid swift code
struct Dog {
    var breed: String
    var cuteness: Int
    var rating: String {
        if cuteness < 3 {
            return "That's a cute dog!"
        } else if cuteness < 7 {
            return "That's a really cute dog!"
        } else {
            return "That a super cute dog!"
        }
        
    }
}
let luna = Dog(breed: "Samoyed", cuteness: 6)
print(luna.rating)

//valid
struct Sunglasses {
    var protectionLevel: Int
    var visionTest: String {
        if protectionLevel < 3 {
            return "These aren't very dark"
        } else if protectionLevel < 6 {
            return "These are just right"
        } else if protectionLevel < 10 {
            return "Who turned the lights out?"
        } else {
            return "Black-hole does exist"
        }
    }
}

//valid swift code
struct Swordfighter {
    var name: String
    var introduction: String {
        return "Hello, my name is \(name)."
    }
}
let inigo = Swordfighter(name: "Inigo Montoya")
print(inigo.introduction)

//valid swift code
struct Race {
    var distance: Int
    var runners = 0
    var description: String {
        return "This is a \(distance)km race with \(runners) runners."
    }
}
let londonMarathon = Race(distance: 42, runners: 40_000)
print(londonMarathon.description)

//valid swift code
struct Keyboard {
    var isMechanical = false
    var noiseLevel: Int {
        if isMechanical {
            return 11
        } else {
            return 3
        }
    }
}
let majestouch = Keyboard(isMechanical: true)
print(majestouch.noiseLevel)

//valid swift code
struct Investor {
    var age: Int
    var investmentPlan: String {
        if age < 30 {
            return "Shares"
        } else if age < 60 {
            return "Equities"
        } else {
            return "Bonds"
        }
    }
}
let investor = Investor(age: 38)
print(investor.investmentPlan)

//valid swift code
struct Toy {
    var color: String
    var isForGirls: Bool {
        if color == "Pink" {
            return true
        } else {
            return true
        }
    }
}

//Swift lets us create property observers, which are special pieces of code that run when properties change.

/* These take two forms: a didSet observer to run when the property just changed, and a willSet
 observer to run before the property changed.
*/
struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 3
game.score += 1

//using will set and did set property observer
struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }

        didSet {
            print("There are now \(contacts.count) contacts.")
            print("Old value was \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Allen W")
app.contacts.append("Ish S")

/* In practice, willSet is used much less than didSet, but you might still see it
 from time to time so it’s important you know it exists. Regardless of which you choose, please try to avoid
 putting too much work into property observers – if something that looks trivial such as game.score += 1 triggers
intensive work, it will catch you out on a regular basis and cause all sorts of performance problems.
*/
