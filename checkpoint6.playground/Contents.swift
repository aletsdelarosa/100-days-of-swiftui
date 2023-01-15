struct Car {
    let make: String
    let model: String
    let numberOfSeats: Int
    let numberOfGears: Int
    private(set) var currentGear: Int = 1
    
    enum GearChange {
        case up
        case down
    }
    
    mutating func changeGear(_ position: GearChange) {
        if position == GearChange.up {
            currentGear = currentGear == numberOfGears ? numberOfGears : currentGear + 1
        }
        else {
            currentGear = currentGear == 1 ? 1 : currentGear - 1
        }
    }
}

var car = Car(make: "Audi", model: "Q3", numberOfSeats: 5, numberOfGears: 5)

print(car.currentGear)

car.changeGear(.up)

print(car.currentGear)

car.changeGear(.down)

car.changeGear(.down)

print(car.currentGear)

car.changeGear(.up)

car.changeGear(.up)

car.changeGear(.up)

car.changeGear(.up)

print(car.currentGear)

car.changeGear(.up)

print(car.currentGear)
