import Foundation

let pizzaInInches: Int = 16
let numberOfPeople: Int = 12
let slicesPerPerson: Int = 4

var numberOfSlices: Int = 10 {
    willSet {
    print(newValue)
    }
    didSet {
    print(oldValue)
    }
}

var numbeOfPizza: Int {
    get {
         let numberOfPeopleFedPerPizza = numberOfSlices / slicesPerPerson
        return numberOfPeople / numberOfPeopleFedPerPizza
    }
    set {
        let totalSlices = numberOfSlices * newValue
        numberOfPeople = totalSlices / slicesPerPerson
    }
}

numbeOfPizza = 6

print(numbeOfPizza)








