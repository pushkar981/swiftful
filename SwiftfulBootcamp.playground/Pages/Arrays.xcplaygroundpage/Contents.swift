import Foundation


// Can be defined in one of two ways
var fruits: [String] = ["Apple", "Orange"]
var colors: Array<String> = ["Red", "Blue"]

// Append & Index
print(fruits)
fruits.append("Mango")                  // Add to the end
fruits.insert("Watermelon", at: 0)      // Insert at index 0
// Remove item at index, worth checking it exists before removing
if fruits.indices.contains(1) {
    fruits.remove(at: 1)
}
fruits.insert(contentsOf: fruits, at: 0) // Insert array at index 0
print(fruits)
print(fruits[3])


// ---------------------------------------------------------------


// First and Last are optional
print(colors)
print(colors.count)
print(colors.first)
let firstIndex = colors.indices.first       // Optional
let lastIndex = colors.indices.last         // Optional
print(lastIndex)


// ---------------------------------------------------------------


// Guard statement outside a function
var cars: [String] = ["Honda", "Toyota"]
print(cars)
for i in 0...0 {
    guard cars.count > 0 else {
        continue
    }
    
    print(cars.last)
}
cars.removeAll()                            // Remove all elements from array
print(cars)
