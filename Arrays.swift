
import UIKit

/*
 grouping using an array. Arrays are their own data type just like String, Int, and Double,
 but rather than hold just one string they can hold zero strings, one string, two strings, three,
 fifty, fifty million, or even more strings – they can automatically adapt to hold as many as you need,
 and always hold data in the order you add it.
 */
var temperatures = [ 25.3, 50, 40.3, 32.5]
print(temperatures[0])

/*
 When it comes to reading values out from an array, we ask for values
 by the position they appear in the array. The position of an item in an array is commonly called its index.
*/
let numbers = [2, 4, 6, 8, 10]
print(numbers[2])

/*
 This confuses beginners a bit, but Swift actually counts an item’s index from zero rather than one
*/
var beatles = [ "John", "Paul", "George", "Ringo"]
print(beatles[0])
/*
 If your array is variable, you can modify it after creating it. For example,
 you can use append() to add new items:
 */
beatles.append("Allen")
beatles.append("Adrian")
print(beatles)

/*
 You can see this more clearly when you want to start with an empty array
 and add items to it one by one. This is done with very precise syntax:
*/
var scores = Array<Int>()
scores.append(42)
scores.append(31)
scores.append(55)
print(scores)
/*
 Arrays are so common in Swift that there’s a special way to create them: rather
 than writing Array<String>, you can instead write [String].
 */
var albums = [String]()
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")
print(albums)

/*
 Swift’s type safety means that it must always know what type of data an array is storing.
 if you provide some initial values Swift can figure it out for itself:
*/
var musicAlbums = ["Folklore"]
musicAlbums.append("Fearless")
musicAlbums.append("Red")
print(musicAlbums)

/* some useful functionality that comes with arrays. */
print(musicAlbums.count)

/* can remove items from an array by using either remove(at:)
 to remove one item at a specific index, or removeAll() to remove everything:
*/
var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)

characters.removeAll()
print(characters.count)

/* can check whether an array contains a particular item by using contains()
*/
let bondMovies = ["Casino Royale", "Spectre", "No Time To Die"]
print(bondMovies.contains("Frozen"))

/* This returns a new array with its items sorted in ascending order,
 which means alphabetically for strings but numerically for numbers – the original array remains unchanged.
*/
let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted())

/* When you reverse an array, Swift is very clever – it doesn’t actually
 do the work of rearranging all the items, but instead just remembers to itself
 that you want the items to be reversed. So, when you print out reversedPresidents,
 don’t be surprised to see it’s not just a simple array any more!
*/
let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)
