import Foundation

class DriverViewModel {
    let name: String
    private(set) var champion: Bool         // this lets you read from outside but not set
    
    // Classes do not have implicit init just like a struct
    // You have to declare them or set default values
    init(name: String, champion: Bool) {
        self.name = name
        self.champion = champion
    }
    
    
    // Struct don't have a deinit because they are value types >> destructor
    // Rarely used
    deinit {
        
    }
    
    func notChampion() {
        self.champion = false
    }
}

// Ok to use let here (compared to struct) because the class itself doesn't change
// Since they are reference type and not value types
let driverModel = DriverViewModel(name: "Max", champion: false)
driverModel.champion = true
driverModel.notChampion()

print(driverModel)
