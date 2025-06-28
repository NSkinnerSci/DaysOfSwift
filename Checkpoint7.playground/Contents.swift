class Animal {
    var legs: Int
    
    init(legs: Int){
        self.legs = legs
    }
}

class Dog: Animal {
    var bark: String = "Woof"
    
    init(bark: String) {
        self.bark = bark
        super.init(legs: 4)
    }
    func speak(){
        print(bark)
    }
}

class Cat: Animal{
    var isTame: Bool
    var meow: String
    
    init(isTame: Bool, meow: String = "meow"){
        self.meow = meow
        self.isTame = isTame
        super.init(legs: 4)
    }
    
    func speak(){
        print(meow)
    }
}

var houston = Cat(isTame: true, meow: "MEOW")
houston.speak()
print(houston.meow)

var corgi = Dog(bark: "rop")
print(corgi.bark)
