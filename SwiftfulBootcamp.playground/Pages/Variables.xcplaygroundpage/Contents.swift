import Foundation

let someConstant: Bool = true

// Once declared as a type, it cannot change in it's lifetime because Swift is type-safe
var someVariable: Bool = true

// Constants are not mutable
// Use constants by default to restrict what we can
//someConstant = false

someVariable = false


var myNumber = 1.123
print(myNumber)
myNumber = 2
print(myNumber)
myNumber = 14123412
print(myNumber)
myNumber = 1
print(myNumber)
myNumber = 458
print(myNumber)


// if statements - lets you change the code path based on a condition

var userIsPremium = false

if userIsPremium {
    print("1 - User is premium!")
} else {
    print("2 - User is NOT premium!")
}
