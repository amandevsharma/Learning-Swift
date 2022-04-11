import UIKit

/* there is a second way that does much the same thing, and it’s almost as common: guard let. */

// Like if let, guard let checks whether there is a value inside an optional, and if
// there is it will retrieve the value and place it into a constant of our choosing.

func printSquare(of number: Int?) {
    let number: Int? = 10
    guard let number = number else {
        print("Missing input")
        return
    }

    print("\(number) x \(number) is \(number * number)")
}
printSquare(of: 10)

//
func Square(of number: Int?) {
    guard let number = number else {
        print("Missing input")

        // 1: We *must* exit the function here
        return
    }

    // 2: `number` is still available outside of `guard`
    print("\(number) x \(number) is \(number * number)")
}

//

Square(of: 10)
/* if let runs the code inside its braces if the optional had a value, and guard let runs the code inside its braces if the optional didn’t have a value.
 */
//If you use guard to check a function’s inputs are valid, Swift will always require you to use return if the check fails.

/* if let if you just want to unwrap some optionals, but prefer guard let if you’re specifically
 checking that conditions are correct before continuing.
*/
func getMeaningOfLife() -> Int? {
    100
    
}
func printMeaningOfLife() {
    guard let name = getMeaningOfLife() else {
        return
    }

    print(name)
}
printMeaningOfLife()

//If your guard let condition fails, you must exit the current method, loop, or condition before the else block ends.
func double(number: Int?) -> Int? {
    guard let number = number else {
        return nil
    }
    return number * 2
}
let input = 5
if let doubled = double(number: input) {
    print("\(input) doubled is \(doubled).")
}
//
func playOpera(by composer: String?) -> String? {
   guard let composer = composer else {
        return "Please specify a composer."
    }
    if composer == "Mozart" {
        return "Le nozze di Figaro"
    } else {
        return nil
    }
}
if let opera = playOpera(by: "Mozart") {
    print(opera)
}
//
func playScale(name: String?) {
    guard let name = name else  {
        return
    }
    print("Playing the \(name) scale.")
}
playScale(name: "C")
//
func uppercase(string: String?) -> String? {
    guard let string = string else {
        return nil
    }
    return string.uppercased()
}
if let result = uppercase(string: "Hello") {
    print(result)
}
//
func isLongEnough(_ string: String?) -> Bool {
    guard let string = string else {
        return false
    }
    if string.count >= 8 {
        return true
    } else {
        return false
    }
}
if isLongEnough("Mario Odyssey") {
    print("Let's play that!")
}
//
func validate(password: String?) -> Bool {
    guard let password = password else {
        return false
    }
    if password == "fr0sties" {
        print("Authenticated successfully!")
        return true
    }
    return false
}
validate(password: "fr0sties")

//
func test(number: Int?) {
    guard let number = number else {
        return
    }
    print("Number is \(number)")
}
test(number: 42)
