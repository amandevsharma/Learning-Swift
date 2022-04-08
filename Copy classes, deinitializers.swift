import UIKit

class User {
    var username = "Anonymous"
    
    func copy() -> User {
        let user = User()
        user.username = username
        return user
    }
}

var user1 = User()

var user2 = user1
user2.username = "Taylor"

print(user1.username)
print(user2.username)
//If you want to create a unique copy of a class instance – sometimes called
// a deep copy – you need to handle creating a new instance and copy across all your data safely.

//When you copy a struct, the original and the copy are different things with their own properties.
struct GalacticaCrew {
    var isCylon = false
}
var starbuck = GalacticaCrew()
var tyrol = starbuck
tyrol.isCylon = true
print(starbuck.isCylon)
print(tyrol.isCylon)

//This creates two different statues, so it prints two different sculptors.
class Statue {
    var sculptor = "Unknown"
}
var venusDeMilo = Statue()
venusDeMilo.sculptor
var david = Statue()
david.sculptor = "Michaelangelo"
print(venusDeMilo.sculptor)
print(david.sculptor)

//
struct Calculator {
    var currentTotal = 0
}
var baseModel = Calculator()
var casio = baseModel
var texas = baseModel
casio.currentTotal = 556
texas.currentTotal = 384
print(casio.currentTotal)
print(texas.currentTotal)

//
class Hospital {
    var onCallStaff = [String]()
}
var londonCentral = Hospital()
var londonWest = londonCentral
londonCentral.onCallStaff.append("Dr Harlan")
londonWest.onCallStaff.append("Dr Haskins")
print(londonCentral.onCallStaff.count)
print(londonWest.onCallStaff.count)

//
class Magazine {
    var pageCount = 132
}
var example = Magazine()
var wired = example
wired.pageCount = 164
var vogue = example
vogue.pageCount = 111
print(wired.pageCount)
print(vogue.pageCount)

//
class Hairdresser {
    var clients = [String]()
}
var tim = Hairdresser()
tim.clients.append("Jess")
var dave = tim
dave.clients.append("Sam")
print(tim.clients.count)
print(dave.clients.count)


//Deinitializers can never take parameters or return data, and as a result aren’t even written with parentheses.
//deinitializer will automatically be called when the final copy of a class instance is destroyed
class Person {
    let id: Int

    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }

    deinit {
        print("User \(id): I'm dead!")
    }
}

//When that code runs you’ll see it creates and destroys each user individually, with one being destroyed fully before another is even created.


var users = [Person]()

for i in 1...3 {
    let user = Person(id: i)
    print("User \(user.id): I'm in control!")
    users.append(user)
}

print("Loop is finished!")
users.removeAll()
print("Array is clear!")

//
class Job {
    deinit {
        print("I quit!")
    }
}
