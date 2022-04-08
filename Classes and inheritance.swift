import UIKit

//another way to create custom data types called classes.
class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10
newGame.score += 20

//valid swift code
class Painting {
    var title: String
    var artist: String
    var paintType: String
     init(title: String, artist: String, paintType: String) {
        self.title = title
        self.artist = artist
        self.paintType = paintType
    }
}

//valid swift code
class BoardGame {
    var name: String
    var minimumPlayers = 1
    var maximumPlayers = 4
    init(name: String) {
        self.name = name
    }
}
//valid swiftcode
class TIE {
    var name: String
    var speed: Int
    init(name: String, speed: Int) {
        self.name = name
        self.speed = speed
    }
}
let fighter = TIE(name: "TIE Fighter", speed: 50)
let interceptor = TIE(name: "TIE Interceptor", speed: 70)
print(fighter.speed)

//
class VideoGame {
    var hero: String
    var enemy: String
    init(heroName: String, enemyName: String) {
        self.hero = heroName
        self.enemy = enemyName
    }
}
let monkeyIsland = VideoGame(heroName: "Guybrush Threepwood", enemyName: "LeChuck")

//valid swift code
class ThemePark {
    var entryPrice: Int
    var rides: [String]
    init(rides: [String]) {
        self.rides = rides
        self.entryPrice = rides.count * 2
    }
}

let fee = ThemePark(rides: ["a", "b", "c", "d"])
print(fee.entryPrice)

//valid swift code
class Empty { }
let nothing = Empty()

//valid swift code
class Podcast {
    var hosts: [String]
    init(hosts: [String]) {
        self.hosts = hosts
    }
}

//Swift lets us create classes by basing them on existing classes, which is a process known as inheritance

class Employee {
    let hours: Int
    
    
        
    init(hours: Int) {
        self.hours = hours
        
       
        }
    func printSummary() {
        print("I work \(hours) hours a day.")
    }
}

// if a child class wants to change a method from a parent class, you must use override in the child class’s version.
class Developer: Employee {
    override func printSummary() {
        print("I'm a developer who will sometimes work \(hours) a day, but other times spend hours arguing about whether code should be indented using tabs or spaces.")
    }
       
    }

//If you know for sure that your class should not support inheritance, you can mark it as final.

class Manager: Employee {
    func work() {
        print("I'm going to meetings for \(hours) hours.")
    }
}
let robert = Developer(hours: 8)
let joseph = Manager(hours: 10)


robert.printSummary()
joseph.work()

let novall = Developer(hours: 12)
novall.printSummary()

//Final classes are ones that cannot be inherited from, which means it’s not possible for users of your code to add functionality or change what they have.
//final keywords
