import Foundation

// Enums are the same as Struct except we know all cases at runtime

struct Car {
    let brand: String
    let model: String
}

var c1: Car = Car(brand: "Ford", model: "Fiesta")
var c2: Car = Car(brand: "Honda", model: "Civic")
var c3: Car = Car(brand: "Toyota", model: "Camry")
print(c1)
print(c2)
print(c3)

// ------------------------------------------------------------------------


struct Car2 {
    let brand: CarBrand
    let model: String
}

struct CarBrand {
    let title: String
}

var b1 = CarBrand(title: "Honda")
var c4 = Car2(brand: b1, model: "Accord")
print(c4)


// ------------------------------------------------------------------------

struct Car3 {
    let brand: CarBrandOptions
    let model: String
}

enum CarBrandOptions {
    case Honda
    case Ford
    case Porsche
    case Toyota
    
    var title: String {
        switch self {
        case .Ford:
            return "Ford"
        case .Honda:
            return "Honda"
        case .Porsche:
            return "Porsche"
        default:
            return "Unknown"
        }
    
    }
}

var c5 = Car3(brand: .Toyota, model: "Cayman")
print(c5.brand.title)
