import Foundation

var firstName: String = "Max"
var champion: Bool = true
var chamionships: Int = 3

var userMax: (String, Bool, Int) = (firstName, champion, chamionships)

func getName() -> String {
    firstName           // equal to return firstName
}

func isChampion() -> Bool {
    champion
}

func getUserInfo() -> (String, Bool, Int) {
    return (firstName, champion, chamionships)
}

func getUserInfo2() -> (name: String, isChampion: Bool, championships: Int) {
    return userMax
}


print(getName())
print(isChampion())
print(getUserInfo())
print(getUserInfo2())

// Print the first Item only
print(getUserInfo().0)      // Access tuple as an array
print(getUserInfo2().isChampion)  // Access tuple by name

