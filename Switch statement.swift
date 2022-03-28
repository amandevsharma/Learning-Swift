
import UIKit

/* You can use if and else if repeatedly to check conditions as many times as you want, but it gets a bit hard to read. */

/* check individual cases one by one, but now Swift is able to help out. In the case of an enum, it knows all possible cases the enum can have, so if we miss one or check one twice it will complain.
 */
enum Weather {
    case sun, rain, wind, snow, unknown
}
let forecast = Weather.rain

switch forecast {
case .sun:
    print("It should be a nice day.")
case .rain:
    print("Pack an umbrella.")
case .wind:
    print("Wear something warm")
case .snow:
    print("School is cancelled.")
case .unknown:
    print("Our forecast generator is broken!")
}

/* If you’re switching on a string then clearly it’s not possible to make an exhaustive check of
 all possible strings because there is an infinite number, so instead we need to provide
 a default case – code to run if none of the other cases match.
*/
let place = "Mega-City One"

switch place {
case "Gotham":
    print("You're Batman!")
case "Mega-City One":
    print("You're Judge Dredd!")
case "Wakanda":
    print("You're Black Panther!")
default:
    print("Who are you?")
}

/* if you explicitly want Swift to carry on executing subsequent cases, use fallthrough.
 This is not commonly used, but sometimes – just sometimes – it can help you avoid repeating work.
*/
let day = 5
print("My true love gave to me…")

switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}
