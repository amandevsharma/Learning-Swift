import UIKit

// can extend a whole protocol to add method implementations, meaning that any types conforming to that protocol get those methods.

let guests = ["Mario", "Luigi", "Peach"]

if guests.isEmpty == false {
    print("Guest count: \(guests.count)")
}

//we can now use isNotEmpty on arrays, sets, and dictionaries, as well as any other types that conform to Collection.
extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

if guests.isNotEmpty {
    print("Guest count: \(guests.count)")
}

//
protocol Person {
    var name: String { get }
    func sayHello()
}
extension Person {
    func sayHello() {
        print("Hi, I'm \(name)")
    }
}
struct Employee: Person {
    let name: String
}
let taylor = Employee(name: "Taylor Swift")
taylor.sayHello()

//All conforming types then get to use those default implementations, or provide their own as needed.

/* Swift uses protocol extensions a lot, but honestly you don’t need to understand them in great detail just yet – you can build fantastic apps without ever using a protocol extension. At this point you know they exist and that’s enough!
*/
