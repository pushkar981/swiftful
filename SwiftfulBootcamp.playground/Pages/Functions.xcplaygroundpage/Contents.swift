import Foundation

func myFirstFunction() {
    var myItem: Bool = false
    myItem = true
//    print(myItem)
}

myFirstFunction()

func mySecondFunction() -> Bool {
    var myItem: Bool = false
    myItem = true
    return myItem
}

let secondItem = mySecondFunction()


// Control flow, passing variable and return
showFirstScreen()

func showFirstScreen() {
    let userCompletedOnboarding = false
    let userProfileCreated = false
    let status = checkUserStatus(didCompleteOnboarding: userCompletedOnboarding, profileCreated: userProfileCreated)
    print(status)
}

func checkUserStatus(didCompleteOnboarding: Bool, profileCreated: Bool) -> Bool {
    return didCompleteOnboarding && profileCreated
}


// Guard statement runs when a condition is not met
// Guard statement cannot fall through and must return, throw or continue to exit scope

/*
 Benefit of Guard
 - Enforced exit by the compiler: we have to throw an error or use the return keyword. This requirement prevents us from writing bugs in which code executes while conditions aren’t met.
 - Clear description of method requirements. A guard explicitly states that these conditions should be met before the body of the function is getting executed.
 - Improved readability since a guard explains you right away that there are required conditions.
 */

printOddNumbers(upperLimit: 10)
func printOddNumbers(upperLimit: Int) {
    var i = 0
    
    while (i <= upperLimit) {
        guard i % 2 == 0 else {
//            print("Odd number: " + String(i))
            i+=1
            continue
        }
        
        print("Even number: " + String(i))
        i+=1
    }
}




// Calculated variables are similar to functions that don't need parameters
let num1 = 8
let num2 = 5

func addNums() -> Int {
    return num1 + num2
}

var num3: Int {
    return num1 + num2
}

print(String(addNums()))
print(num3)
