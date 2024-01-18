import Foundation

// Dictionaries are not ordered, keys are unique

var drivers: [Int : String] = [
    33 : "VER",
    11 : "PER",
    44 : "HAM",
    63 : "RUS"
]

print(drivers)
print(drivers.first)
print(drivers.count)
print(drivers[33])
print(drivers[100])
print(drivers.keys)
print(drivers.values)
print(drivers.isEmpty)
