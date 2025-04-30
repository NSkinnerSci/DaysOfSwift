var printLog: [String] = []
for i in 1...100 {
    if i.isMultiple(of:3) && i.isMultiple(of: 5){
        print("FizzBuzz")
        printLog.append("FizzBuzz\n")
    }
    else if i.isMultiple(of: 3){
        print("Fizz")
        printLog.append("Fizz\n")
    }
    else if i.isMultiple(of: 5){
        print("Buzz")
        printLog.append("Buzz\n")
    }
    else{
        print(i)
        printLog.append(String(i))
    }
}

print(printLog)
