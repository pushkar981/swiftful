import Foundation // foundational Swift module, basic types and swift behaviors

// String is just text
var myFirstItem: String = "Hello, world"        // the ": String" is optional

// Reference previously created objects
let myTitle = myFirstItem

// Boolean (bool) is true or false
let mySecondItem: Bool = true

// Swift is type-safe language
let myFifthItem: Bool = true        // you can't assign a bool to a string or vice versa - compiler error

// Date
let myFirstDate: Date = .distantPast
let todaysDate: Date = .now
let todaysDate2: Date = Date()
let myLaterDate: Date = .distantFuture

// Numbers
let numOne = 1                      // Int
let numTwo: Double = 1.5            // Double, since it has decimal = use for math
let numThird: CGFloat = 1.7         // CGFloat, since it has decimal = use for UI

