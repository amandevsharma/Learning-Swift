
import UIKit

/* You can check whether one number is a multiple of another by using .isMultiple(of:). For example, i.isMultiple(of: 3).
 In this instance you need to check for 3 and 5 first because it’s the most specific, then 3, then 5, and finally have an else block to handle all other numbers.
 You can either use && to check for numbers that are multiples of 3 and 5, or have a nested if statement.
 You need to count from 1 through 100, so use ... rather than ..<.
*/

for i in 1...100 {
    if i.isMultiple(of: 3) && i.isMultiple(of: 5) {
        print("\(i) Fizzbuzz")
        
    } else if i.isMultiple(of: 3) {
        print("\(i) Fizz")
        
    } else if i.isMultiple(of: 5) {
        print("\(i) Buzz")
        
    } else {
        print(i)
    }
}
