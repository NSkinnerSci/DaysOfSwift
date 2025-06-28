
// Day 7
// Functions

func printTimesTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5, end: 20)

// Retrun values from functions
func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)

// Return multiple values from a function
// Using a tuple
func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let user = getUser()
print("Name: \(user.firstName) \(user.lastName)")

// If tuple doesn't have name, you can use an index
func getUser2() -> (String, String) {
    ("Taylor", "Swift")
}

let user2 = getUser2()
print("Name: \(user2.0) \(user2.1)")

// Save to multiple objects
let (firstName, lastName) = getUser()
print("Name: \(firstName) \(lastName)")

// Customize paremeter labels
//If we add an underscore before the parameter name, we can remove the external parameter label like so:
func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result2 = isUppercase(string)

// Day 8
// Default values
func printTimesTables(for number: Int, end: Int = 12) { // Specify the max number of times tables at end: Int = 12
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)
printTimesTables(for: 8)

// Handling Errors
// First make an enum with possible errors
enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }

    if password == "12345" {
        throw PasswordError.obvious
    }

    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

// This is how we run code with a function that checks errors
let pString = "12345"
do {
    let result = try checkPassword(pString)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}

// Day 9
// Creating closures
let sayHello = { (name: String) -> String in //in is used to mark the end of the parameters and return type
    "Hi \(name)!"
}
sayHello("Bob")

// Checkpoint 4

// Day 10
// Structs!

// A simple struct:
struct Album {
    let title: String
    let artist: String
    let year: Int

    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}

// Some struct uses
let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 2016)

print(red.title)
print(wings.artist)

red.printSummary()
wings.printSummary()

// Computing property values of structs
struct Employee {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0

    var vacationRemaining: Int {
        vacationAllocated - vacationTaken
    }
}
var archer = Employee(name: "Sterling Archer", vacationAllocated: 14)
archer.vacationTaken += 4
print(archer.vacationRemaining)
archer.vacationTaken += 4
print(archer.vacationRemaining)

// didSet and willSet observers
struct Game {
    var score = 0 {
        didSet { // this will print the new score, everytime the score is changed
            print("Score is now \(score)")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 3
game.score += 1

// use of willSet as well as oldValue
struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }

        didSet {
            print("There are now \(contacts.count) contacts.")
            print("Old value was \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Allen W")
app.contacts.append("Ish S")


// Adding in initialisers to a STRUCT

struct Player {
    let name: String
    let number: Int

    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}

let player = Player(name: "Megan R")
print(player.number)

struct Country {
    var name: String
    var usesImperialMeasurements: Bool
    init(countryName: String) {
        name = countryName
        let imperialCountries = ["Liberia", "Myanmar", "USA"]
        if imperialCountries.contains(name) {
            usesImperialMeasurements = true
        } else {
            usesImperialMeasurements = false
        }
    }
}

// Day 11
// Access Control

// Example struc:
struct BankAccount {
    var funds = 0

    mutating func deposit(amount: Int) {
        funds += amount
    }

    mutating func withdraw(amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}
// That has methods to deposit and withdraw money from a bank account, and should be used like this:

var account = BankAccount()
account.deposit(amount: 100)
let success = account.withdraw(amount: 200)

if success {
    print("Withdrew money successfully")
} else {
    print("Failed to get the money")
}
//But the funds property is just exposed to us externally, so what’s stopping us from touching it directly? The answer is nothing at all – this kind of code is allowed:

account.funds -= 1000

// To solve this, we can tell Swift that funds should be accessible only inside the struct – by methods that belong to the struct, as well as any computed properties, property observers, and so on.

// This takes only one extra word:

private var funds = 0

// Use private for “don’t let anything outside the struct use this.”
// Use fileprivate for “don’t let anything outside the current file use this.”
// Use public for “let anyone, anywhere use this.”

// private(set) can make something readable, but not writeable
private(set) var readableNotWriteable = "String"




// Day 12
// Creating your own classes
class Game2 {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game2()
newGame.score += 10

// How to make one class inherit from another
// Use a colon to inherit the following class
class Employee2 {
    let hours: Int

    init(hours: Int) {
        self.hours = hours
    }
    func printSummary() {
        print("I work too hard")
    }
}
class Developer: Employee2 {
    func work() {
        print("I'm writing code for \(hours) hours.")
    }
}

class Manager: Employee2 {
    func work() {
        print("I'm going to meetings for \(hours) hours.")
    }
}
let robert = Developer(hours: 8)
let joseph = Manager(hours: 10)
robert.work()
joseph.work()

// To overide a childs class action, you must use the term "overried"
class SeniorDveloper: Employee2 {
    override func printSummary() {
        print("I'm a who will sometimes work \(hours) hours a day, but other times spend hours arguing about whether code should be indented using tabs or spaces.")
    }
}
// If you know for sure that your class should not support inheritance, you can mark it as final

// How to add initializers for classes
// If you have a parent class that calls a child class with an initialiser, you need to initialise the childs initialiser in the parent class using "super"

// For child class Vehicle:
class Vehicle {
    let isElectric: Bool

    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}
// Use super.init in the parent class Car
class Car: Vehicle {
    let isConvertible: Bool

    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}

// The, when we make our object, we can call the object like this:
let teslaX = Car(isElectric: true, isConvertible: false)

// How to copy classes
//In Swift, all copies of a class instance share the same data, meaning that any changes you make to one copy will automatically change the other copies. This happens because classes are reference types in Swift, which means all copies of a class all refer back to the same underlying pot of data.
class User {
    var username = "Anonymous"
}
// Make an instance of the class
var user1 = User()
print(user1.username)
// Copy the class
var user3 = user1
// Change a property of the copied class
user3.username = "Taylor"
// Get the result from both
print(user1.username)
print(user3.username)

// How to create a deinitializer for classes
// Requirments:
// Just like initializers, you don’t use func with deinitializers – they are special.
// Deinitializers can never take parameters or return data, and as a result aren’t even written with parentheses.
// Your deinitializer will automatically be called when the final copy of a class instance is destroyed. That might mean it was created inside a function that is now finishing, for example.
// We never call deinitializers directly; they are handled automatically by the system.
// Structs don’t have deinitializers, because you can’t copy them.

class UserDeinit {
    let id: Int

    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }

    deinit {
        print("User \(id): I'm dead!")
    }
}

// Now create an instance of the class in a loop, where the class will be destroyed when the loop is exited
for i in 1...3 {
    let user = UserDeinit(id: i)
    print("User \(user.id): I'm in control!")
}

// How to work with variables inside classes

// Summary: Classes
