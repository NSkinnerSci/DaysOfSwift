import SwiftUI

var greeting = "Hello, playground" // creates an editable variable

// Create a new variable, and change it over time
var name = "Ted"
name = "Rebecca"
name = "Keeley"

// Create a constant for something you do not want to ever change
let character = "Daphne"
//character = "bob" // Error here, as character cannot be set

// Print values that you have set
var playerName = "Roy"
print(playerName)

playerName = "Dani"
print(playerName)

playerName = "Sam"
print(playerName)

// Examples of "camel case", where the first letter is lowercase, and subsequent letters are uppercase for each new word
let managerName = "Michael Scott"
let dogBreed = "Samoyed"
let meaningOfLife = "How many roads must a man walk down?"

// Creating a string
let actor = "Denzel Washington"

// Using punctuation and emoji's
let filename = "paris.jpg"
let result = "⭐️ You win! ⭐️"

// Create strings with line breaks like this
let movie = """
A day in
the life of an
Apple engineer
"""

// Read the length of a string
print(actor.count)

// Convert string to upper case
print(result.uppercased())

// Checks if a string has a prefix...
print(movie.hasPrefix("A day"))
// Or a suffix
print(filename.hasSuffix(".jpg"))

// Creating integers
let score = 10
let reallyBig = 100000000

// Use _ to break up numbers
let reallyBigUnderscore = 100_000_000

// Basic arythmatic
let lowerScore = score - 2
let higherScore = score + 10
let doubledScore = score * 2
let squaredScore = score * score
let halvedScore = score / 2
print(score)

// This code here...
var counter = 10
counter = counter + 5
// is the same as this code here
counter += 5
print(counter)

// Other options include...
counter *= 2
print(counter)
counter -= 10
print(counter)
counter /= 2
print(counter)

// Check if a number is the multiple of something
let number = 120
print(number.isMultiple(of: 3))
// You can also use the raw number
print(120.isMultiple(of: 3))

// Creating floating points (decimals)
let decimal = 0.1 + 0.2
print(decimal)

// Integers and decimals cannot mix
let a = 1
let b = 2.0
//let c = a + b // Code does not run
// Instead, convert b to an int first
let c = a + Int(b)
// Or treat a as a double
let d = Double(a) + b

// Once swift has decided on the data type, it cannot be changed
// Therefore, this code does not work
var name2 = "Nicolas Cage"
//name2 = 57

// Day 2 //

// Simple boolean
let goodDogs = true
var gameOver = false

// Flipping booleans
var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)
isAuthenticated = !isAuthenticated
print(isAuthenticated)

// Toggling a boolean
//var gameOver = false
gameOver.toggle()

// Joining strings together
// Using the + operater to join strings
let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action
print(lyric)

// "Operator overloading"
// operator overloading is when an operator, such as "+" can be used for many things
// e.g. it can add doubles or ints together, as well as combinging strings

// Stirng interpolation
let name3 = "Taylor"
let age = 26
let message = "Hello, my name is \(name3) and I'm \(age) years old."
print(message)
// Interpolation is much more efficient thatn the "+" operator for stings

// Simple Data Checkpoint


// Day 3 //
// Simple arrays
var beatles = ["John", "Paul", "George", "Ringo"]
let numbers = [4, 8, 15, 16, 23, 42]
var temperatures = [25.3, 28.2, 26.4]

// Indexing arrays
print(beatles[0])
print(numbers[1])
print(temperatures[2])

// Appending arrays
beatles.append("Adrian")
beatles.append("Allen")
beatles.append("Adrian")
beatles.append("Novall")
beatles.append("Vivian")

// You can only append the same data type to arrays
//temperatures.append("Chris") // doesn't work

// Creating an empty array and appending
var scores = Array<Int>()
scores.append(100)
scores.append(80)
scores.append(85)
print(scores[1])

// Create an array with []
var albums = [String]()
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")

// function on arrays
print(albums.count)

// Removing items from an array
var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)

characters.remove(at: 2)
print(characters.count)

characters.removeAll()
print(characters.count)

// Check if an array contains a value
let bondMovies = ["Casino Royale", "Spectre", "No Time To Die"]
print(bondMovies.contains("Frozen"))

// Sort arrays
let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted())

// or reversed
let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)

// Dictionaries
// Creating a dictionary
let employee2 = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]

// Pull data from a dictionary
print(employee2["name"])
print(employee2["job"])
print(employee2["location"])

// Providing default values for a dictionary
print(employee2["name", default: "Unknown"])
print(employee2["job", default: "Unknown"])
print(employee2["location", default: "Unknown"])

// Creat an empty dictionary, and add data later
var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206

// Sets
// Similar to arrays, except you can’t add duplicate items, and they don’t store their items in a particular order
let people2 = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])
print(people2)

var people3 = Set<String>()
people3.insert("Denzel Washington")
people3.insert("Tom Cruise")
people3.insert("Nicolas Cage")
people3.insert("Samuel L Jackson")

// Sets are much faster than arrays when you want to identify if it contains a particular value

// Enumerations
// Creates a object that can only be a value that has already been specified
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

var day = Weekday.monday
day = Weekday.tuesday
day = Weekday.friday

// Day 4
// Type annotations
let surname: String = "Lasso"
var score2: Int = 0

// Other types
var user: [String: String] = ["id": "@twostraws"]
var books: Set<String> = Set(["The Bluest Eye", "Foundation", "Girl, Woman, Other"])

// Values of an enum have the same type as the enum itself, so we could write something like this:

enum UIStyle {
    case light, dark, system
}

var style = UIStyle.light

// We can also create an empty constant and assign it later, use the type annotation
let username: String
// lots of complex logic
username = "@twostraws"
// lots more complex logic
print(username)

// Checkpoint 2

