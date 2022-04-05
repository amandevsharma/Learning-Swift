import UIKit
import Foundation

// property observer
struct BankAccount {
    var name: String
    var isMillionnaire = false
    var balance: Int {
        didSet {
            if balance > 1_000_000 {
                isMillionnaire = true
            } else {
                isMillionnaire = false
            }
        }
    }
}

let wealth = BankAccount(name: "Aman", isMillionnaire: true, balance: 20_000_000)
print(wealth)

//valid swift code
struct App {
    var name: String
    var isOnSale: Bool {
        didSet {
            if isOnSale {
                print("Go and download my app!")
            } else {
                print("Maybe download it later.")
            }
        }
    }
}

// custom initializers
//Initializers are specialized methods that are designed to prepare a new struct instance to be used.
//all properties must have a value by the time the initializer ends.

/* The only catch here is that you must be careful to distinguish between
 the names of parameters coming in and the names of properties being assigned
*/

// self to assign parameters to properties to clarify we mean “assign the name parameter to my name property”.
//By writing self.name we’re clarifying we mean “the name property that belongs to my current instance,” as opposed to anything else.

struct Player {
    let name: String
    let number: Int

    init(name: String, number: Int) {
        self.name = name
        self.number = Int.random(in: 1...99)
    }
}
let player = Player(name: "Megan R", number: 10)
print("The name of the player is \(player.name) and his jersey number is \(player.number)")

//all properties must have a value by the time the initializer ends.


// the default memberwise initializer goes away. If you want it to stay, move your custom initializer to an extension

struct Employee {
    var name: String
    var yearsActive = 0
}

extension Employee {
    init() {
        self.name = "Anonymous"
        print("Creating an anonymous employee…")
    }
}

// creating a named employee now works
let roslin = Employee(name: "Laura Roslin")

// as does creating an anonymous employee
let anon = Employee()

//valid swift code
struct Country {
    var name: String
    var usesImperialMeasurements: Bool
    init(countryName: String) {
        name = countryName
        let imperialCountries = ["Liberia", "Myanmar", "USA"]
        if imperialCountries.contains(name) {
            usesImperialMeasurements = true
        } else {
            usesImperialMeasurements = false
        }
    }
}
print(Country.init(countryName: "USA"))

//valid swift code
struct Tree {
    var type: String
    var hasFruit: Bool
    init() {
        type = "Cherry"
        hasFruit = true
    }
}
let cherryTree = Tree()
print(cherryTree.type)

//valid swift code
struct Starship {
    var name: String
    var maxWarp: Double
    init(starshipName: String, maxwarp: Double) {
        name = starshipName
        self.maxWarp = maxwarp
    }
}
let voyager = Starship(starshipName: "Apollo", maxwarp: 2.0)
print("the name of the voyager is \(voyager.name) and mission is \(voyager.maxWarp)")

//valid swift code
struct Cabinet {
    var height: Double
    var width: Double
    var area: Double
    init (itemHeight: Double, itemWidth: Double) {
        height = itemHeight
        width = itemWidth
        area = height * width
    }
}
let drawers = Cabinet(itemHeight: 2.0, itemWidth: 3.0)
print(drawers.area)

//If you need to refer to a local property to distinguish it from a method parameter, use self.propertyName.
struct SuperHero {
    var nickname: String
    var powers: [String]
    init(nickname: String, superPowers: [String]) {
        self.nickname = nickname
        self.powers = superPowers
    }
}
//Initializers cannot finish until all properties have a value,
let batman = SuperHero(nickname: "The Caped Crusader", superPowers: ["He's really rich"])

//valid swift code
struct Character {
var name: String
var actor: String
var probablyGoingToDie: Bool
init(name: String, actor: String) {
    self.name = name
    self.actor = actor
    if self.actor == "Sean Bean" {
        probablyGoingToDie = true
    } else {
        probablyGoingToDie = false
    }
}
}

//valid swift code
struct District {
    var number: Int
    var supervisor: String
    init(number: Int, supervisor: String) {
        self.number = number
        self.supervisor = supervisor
    }
}
let district = District(number: 9, supervisor: "Unknown")
print(district.number)
