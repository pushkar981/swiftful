import Foundation

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

// Print only drivers with even number
for driver in allDrivers {
    if (driver.number % 2 == 0) {
        print(driver)
    }
}

// Filter
var oddNumberedDrivers: [Driver] = allDrivers.filter { driver in
    if (driver.number % 2 != 0) {
        return true
    }
    return false
}
print(oddNumberedDrivers)

// Filter; short-hand
var less20NumberedDrivers: [Driver] = allDrivers.filter({
    if ($0.number < 20) {
        return true
    }
    
    return false
})
print(less20NumberedDrivers)





// Sorting
var orderedDrivers: [Driver] = allDrivers.sorted { d1, d2 in
    return d1.number < d2.number
}
print(orderedDrivers)

// Sorting, reverse, short-hand
var orderedDrivers2: [Driver] = allDrivers.sorted(by: {$0.number > $1.number})
print(orderedDrivers2)




// Mapping
var codes: [String] = allDrivers.map { driver in
    return driver.name
}
print(codes)

// Mapping, short-hand
var codes2: [String] = allDrivers.map({$0.name})
print(codes2)
