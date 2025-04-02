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


