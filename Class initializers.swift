import UIKit

/* super is another one of those values that Swift automatically provides for us, similar
 to self: it allows us to call up to methods that belong to our parent class, such as its initializer.
*/
class Vehicle {
    let isElectric: Bool

    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}
class Car: Vehicle {
    let isConvertible: Bool

    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}

let teslaX = Car(isElectric: true, isConvertible: false)
print(teslaX.isElectric)

//If a subclass does not have any of its own initializers, it automatically inherits the initializers of its parent class.

//valid class inheritance

//valid swift code
class bigVehicle {
    var wheels: Int
    init(wheels: Int) {
        self.wheels = wheels
    }
}
class Truck: bigVehicle {
    var goodsCapacity: Int
    init(wheels: Int, goodsCapacity: Int) {
        self.goodsCapacity = goodsCapacity
        super.init(wheels: wheels)
        
    }
}
//valid swift code
class Bicycle {
    var color: String
    init(color: String) {
        self.color = color
    }
}
class MountainBike: Bicycle {
    var tireThickness: Double
    init(color: String, tireThickness: Double) {
        self.tireThickness = tireThickness
        super.init(color: color)
    }
}

//valid swift code
class Instrument {
    var name: String
    init(name: String) {
        self.name = name
    }
}
class Piano: Instrument {
    var isElectric: Bool
    init(isElectric: Bool) {
        self.isElectric = isElectric
        super.init(name: "Piano")
    }
}
//valid swift code
class Shape {
    var sides: Int
    init(sides: Int) {
        self.sides = sides
    }
}
class Rectangle: Shape {
    var color: String
    init(color: String) {
        self.color = color
        super.init(sides: 4)
    }
}
