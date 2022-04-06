import UIKit

/* Swift’s structs let us access their properties and methods freely, but often that isn’t
 what you want – sometimes you want to hide some data from external access.
*/
//we can tell Swift that funds should be accessible only inside the struct – by methods that belong to the struct, as well as any computed properties, property observers,

//And now accessing funds from outside the struct isn’t possible, but it is possible inside both deposit() and withdraw()
// access control, because it controls how a struct’s properties and methods can be accessed from outside the struct.

/* Use private for “don’t let anything outside the struct use this.”
 Use fileprivate for “don’t let anything outside the current file use this.”
 Use public for “let anyone, anywhere use this.”
*/

//private(set). This means “let anyone read this property, but only let my methods write it.”

//If you use private access control for one or more properties, chances are you’ll need to create your own initializer.
struct BankAccount {
    private var funds = 0
    mutating func deposit(amount: Int) {
        funds += amount
    }

    mutating func withdraw(amount: Int) -> Bool {
        if funds > amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

var account = BankAccount()

account.deposit(amount: 100)
let success = account.withdraw(amount: 200)


if success {
    print("Withdrew money successfully")
} else {
    print("Failed to get the money")
}


//access control, valid code

struct Order {
    private var id: Int
    init(id: Int) {
        self.id = id
    }
}
let order = Order(id: 10)

//
struct Person {
    private var socialSecurityNumber: String
    init(ssn: String) {
        socialSecurityNumber = ssn
    }
}
let sarah = Person(ssn: "555-55-5555")
print(sarah.self)

//valid swift
struct Contributor {
     private var name = "Anonymous"
}
let paul = Contributor()
print(paul.self)

//valid swift code
struct SecretAgent {
    private var actualName: String
    public var codeName: String
    init(name: String, codeName: String) {
        self.actualName = name
        self.codeName = codeName
    }
}
let bond = SecretAgent(name: "James Bond", codeName: "007")
print(bond.codeName)

//valid swift code
struct Office {
    private var passCode: String
    var address: String
    var employees: [String]
    init(address: String, employees: [String]) {
        self.address = address
        self.employees = employees
        self.passCode = "SEKRIT"
    }
}
let monmouthStreet = Office(address: "30 Monmouth St", employees: ["Paul Hudson"])

//
struct RebelBase {
    private var location: String
    private var peopleCount: Int
    init(location: String, people: Int) {
        self.location = location
        self.peopleCount = people
    }
}
let base = RebelBase(location: "Yavin", people: 10 )

//valid swift

struct School {
var staffNames: [String]
private var studentNames: [String]
    init(staff: String..., studentNames: String) {
    self.staffNames = staff
    self.studentNames = [String]()
}
}
let royalHigh = School(staff: "Mrs Hughes", studentNames: "hello world")

