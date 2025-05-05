import UIKit

enum funcError: Error {
    case outOfBounds, noRoot
}

func getSquareRoot(of number: Int) throws -> Int {
    if number < 1 || number > 10_000{
        throw funcError.outOfBounds
    }
    for i in 1...number{
        print(i)
        if number / i == i {
            return i
        } else if i == number{
            throw funcError.noRoot
        }
    }
    return 0
}

do {
    try getSquareRoot(of: 90)
} catch funcError.outOfBounds{
    print("Number out of bounds!")
} catch funcError.noRoot {
    print("No integer root!")
}

