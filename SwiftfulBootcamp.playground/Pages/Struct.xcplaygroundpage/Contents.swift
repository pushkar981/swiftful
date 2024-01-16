import Foundation

struct Driver {
    let firstName: String
    let champion: Bool
    let chamionships: Int
    
    // This is implicit and doesn't have to be written out explicitly
    init(firstName: String, champion: Bool?, chamionships: Int?) {
        self.firstName = firstName
        self.champion = champion ?? false
        self.chamionships = chamionships ?? 0
    }
}

let max = Driver(firstName: "Max", champion: true, chamionships: 3)
print(max.firstName)

let sergio = Driver(firstName: "Sergio", champion: nil, chamionships: nil)
print(sergio.champion)

let daniel = Driver(firstName: "Daniel", champion: nil, chamionships: nil)
print(daniel.chamionships)



// ------------------------------------------------------------------------


// Non-mutable struct
struct UserModel {
    // properties are immutable
    let name: String
    let isPremium: Bool
}

var user1 = UserModel(name: "Nick", isPremium: false)

func markUserAsPremium() {
    print(user1)
    user1 = UserModel(name: user1.name, isPremium: true)        // Note: user1 is a variable, so can be re-initialized
    print(user1)
}

markUserAsPremium()



// ------------------------------------------------------------------------


// Mutable struct
struct UserModel2 {
    let name: String
    var isPremium: Bool             // This is var instead of let
}

var user2 = UserModel2(name: "Nick", isPremium: false)

func markUserAsPremium2() {
    print(user2)
    user2.isPremium = true          // Mutating an existing object
    print(user2)
}

markUserAsPremium2()



// ------------------------------------------------------------------------


// Immutable struct
struct UserModel3 {
    // properties are immutable
    let name: String
    let isPremium: Bool
    
    func markUserPremium(newValue: Bool) -> UserModel3 {
        return UserModel3(name: name, isPremium: newValue)
    }
}


var user3: UserModel3 = UserModel3(name: "Nick", isPremium: false)
user3 = user3.markUserPremium(newValue: true)
print(user3)


// ------------------------------------------------------------------------


// Mutable struct
struct UserModel4 {
    let name: String
    private(set) var isPremium: Bool             // This is var instead of let
    
    mutating func markUserAsPremium() {
        isPremium = true
    }
    
    mutating func updateIsPremium(newValue: Bool) {
        isPremium = newValue
    }
}

var user4 = UserModel4(name: "Nick", isPremium: false)
user4.markUserAsPremium()
print(user4)
user4.updateIsPremium(newValue: false)
print(user4)

