import Foundation

// There is always a value and it is a Bool
let myBool: Bool = false

//We don't know if that is a value, but if there is it'll be a Bool
var myOtherBool: Bool? = false
print(myOtherBool)

myOtherBool = true
print(myOtherBool)

myOtherBool = nil
print(myOtherBool)


// Nil coalescing operator is ??
var newValue: Bool? = myOtherBool

// The value of myOtherBool (if there is one) else default value of false
var newValue2: Bool = myOtherBool ?? false
print(newValue2.description)


var myString: String? = "Hello!"
print(myString ?? "No value")

myString = nil
print(myString ?? "No value")


var userIsPremium: Bool? = false
func checkUserPremium() -> Bool? {
    return userIsPremium
}

func checkUserPremium2() -> Bool {
    return userIsPremium ?? false
}

// ----------------------------------------------------------------


// If let
// When an if-let is successful, enter the closure
func checkUserPremium3() -> Bool {
    // If there is a value, assign to newUser
    if let newUser = userIsPremium {
        return newUser
    }
    
    return false
}

func checkUserPremium4() -> Bool {
    // If there is a value, assign to userIsPremium
    if let userIsPremium {      // This is no longer optional
        return userIsPremium
    }
    
    return false
}

// When a guard fails, enter the closure
func checkUserPremium5() -> Bool {
    // Make sure there is a value tht you can assign to newValue, else return
    guard let newValue = userIsPremium else {
        return false
    }
    
    return newValue
}


// When a guard fails, enter the closure
func checkUserPremium6() -> Bool {
    // Make sure there is a value tht you can assign to newValue, else return
    guard let userIsPremium else {
        return false
    }
    
    return userIsPremium
}

// ----------------------------------------------------------------


// User needs these 3 things to be available
var user1: Bool? = true
var user2: Bool? = false
var user3: String? = nil

func checkUserSetup() -> Bool {
    if let user1, let user2, let user3 {
        return getUserStatus(userSetting1: user1, userSetting2: user2, userSetting3: user3)
    }
}

func getUserStatus(userSetting1: Bool, userSetting2: Bool, userSetting3: String) -> Bool {
    if userSetting1 && userSetting2 && userSetting3 {
        return true
    }
    
    return false
}



// Optional chaining
func getUsername() -> String? {     // Returns an optional string
    return "Romeo"
}

func getTitle() -> String {         // Returns a string
    return "Title"
}

func getUserdata() {
    let username: String? = getUsername()
    let count = username?.count         // This count become optional as well because it depends on an optional value
    
    let title: String = getTitle()
    let count2 = title.count
    
    let firstCharIsLowercase = (username?.first?.isLowercase) ?? false         // Optional chaining
    
    // Unsafely unwrap an optional
    // You are 100% sure that username won't be nil
    // NullPointerException if username is nil, app will crash!
    let count3: Int = username!.count
}
