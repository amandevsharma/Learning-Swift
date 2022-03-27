
import UIKit

/* An enum – short for enumeration – is a set of named
 values we can create and use in our code. They don’t have any
 special meaning to Swift, but they are more efficient and safer, so you’ll use them a lot in your code.
*/

/* enums come in: they let us define a new data type with a handful of specific values
 that it can have. Think of a Boolean, that can only have true or false – you can’t set it
 to “maybe” or “probably”, because that isn’t in the range of values it understands.
 Enums are the same: we get to list up front the range of values it can have, and Swift
 will make sure you never make a mistake using them.
*/

enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

/* That calls the new enum Weekday, and provides
 five cases to handle the five weekdays.
 Now rather than using strings, we would use the enum.
*/

/*remember that once you assign a value to a variable or constant,
 its data type becomes fixed – you can’t set a variable to a string at first, then
 an integer later on. Well, for enums this means you can skip the enum name
 after the first assignment
*/

var day = Weekday.monday
day = Weekday.tuesday
day = Weekday.wednesday

print(day)

/*many cases in an enum you can just write case once,
 then separate each case with a comma:
 */
enum Days {
    case monday, tuesday, wednesday, thursday, friday
}

/* remember that once you assign a value to a variable or constant,
 its data type becomes fixed – you can’t set a variable to a string at first, then
 an integer later on. Well, for enums this means you can skip the enum name
 after the first assignment
*/

var workDays = Weekday.monday
workDays = .tuesday
workDays = .wednesday
workDays = .thursday

print(workDays)

/* one major benefit of enums is that Swift stores them in an optimized form
 – when we say Weekday.monday Swift is likely to store that using a single integer
 such as 0, which is much more efficient to store and check than the letters M, o, n, d, a, y.
*/

/* Enums let you define fixed groups of items so you don't risk typos while using them. */
