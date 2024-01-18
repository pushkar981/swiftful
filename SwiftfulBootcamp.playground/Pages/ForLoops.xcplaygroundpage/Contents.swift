import Foundation

for i in 1..<101 {
//    print(i)
}

let myArray = ["alpha", "bravo", "charlie", "delta"]
var secondArray: [String] = []
for item in myArray {
    print(item)
    
    if item == "bravo" {
        secondArray.append(item)
    }
}
print(secondArray)




struct Driver {
    let name: String
    let number: Int
}

let allDrivers = [
    Driver(name: "VER", number: 33),
    Driver(name: "PER", number: 11),
    Driver(name: "HAM", number: 44),
    Driver(name: "RUS", number: 63)
]

for driver in allDrivers {
    print(driver)
    
    if driver.number == 11 {
        break               // exit inner-most loop
    }
}

// Enumerated loops
for (i, driver) in allDrivers.enumerated() {
    if (i == 1) {
        continue            // continue inner-most loop if condition meets
    }
    
    print("\(i) > \(driver)")
}
