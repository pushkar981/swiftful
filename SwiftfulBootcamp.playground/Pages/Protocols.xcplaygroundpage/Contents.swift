import Foundation

protocol DriverProtocol {
    var name: String { get }
}


// Protocols are a list of rules
struct Driver: DriverProtocol {
    let name: String
    let number: Int
}

