
// Checkpoint 6

struct Car {
    let model: String
    let nSeats: Int
    private(set) var currentGear: Int
    
    mutating func changeGear(newGear: Int){
        if newGear >= 0 && newGear < 6{
            self.currentGear = newGear
        }else{
            print("No such gear!")
            self.currentGear = 0
        }
    }
    
    init(model: String, nSeats: Int){
        self.model = model
        self.nSeats = nSeats
        self.currentGear = 0
    }
    
}

var myCar = Car(model: "Mazda", nSeats: 5)

myCar.currentGear

myCar.changeGear(newGear: 4)

myCar.currentGear

myCar.changeGear(newGear: 10)

myCar.currentGear
