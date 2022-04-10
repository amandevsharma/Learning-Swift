import UIKit

/* Extensions let us add functionality to any type, whether we created
 it or someone else created it – even one of Apple’s own types.
*/

var quote = "   The truth is rarely pure and never simple   "

let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)
 print(trimmed)

// Having to call trimmingCharacters(in:) every time is a bit wordy, so let’s write an extension to make it shorter:
extension String {
    func trimmer() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

let trimmer = quote.trimmer()
print(trimmer)

//the extension has a number of benefits over the global function

// the default memberwise initializer as well as our custom initializer, we’d place the custom one in an extension,
struct Book {
    let title: String
    let pageCount: Int
    let readingHours: Int
}

let lotr = Book(title: "Lord of the Rings", pageCount: 1178, readingHours: 24)

extension Book {
    init(title: String, pageCount: Int) {
        self.title = title
        self.pageCount = pageCount
        self.readingHours = pageCount / 50
    }
}
// Extensions can add methods and computed properties, but not stored properties.
extension Double {
    var isNegative: Bool {
        return self < 0
    }
}

//
extension String {
    mutating func append(_ other: String) {
        self += other
    }
}
//
extension Int {
    func times(_ action: () -> Void) {
        for _ in 0..<self {
            action()
        }
    }
}

//
extension Int {
    func cubed() -> Int {
        return self * self * self
    }
}

//
extension Int {
    func clamped(min: Int, max: Int) -> Int {
        if (self > max) {
            return max
        } else if (self < min) {
            return min
        }
        return self
    }
}

//
extension String {
    var isLong: Bool {
        return count > 25
    }
}

//
extension String {
    func withPrefix(_ prefix: String) -> String {
        if self.hasPrefix(prefix) {
            return self
        }
        return "\(prefix)\(self)"
    }
}

//
extension String {
    func isUppercased() -> Bool {
        return self == self.uppercased()
    }
}
