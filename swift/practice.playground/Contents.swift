//: practice basics

import UIKit

// type conversion
let num1: Int = 10
let	num2: Double = 0.5
let sum = Double(num1) + num2

// array
var emptyArray = [String]()
emptyArray = ["un", "deux", "trois"]
emptyArray.append("quarte")


// dictionary
var capitals = [
	"BC": "Victoria",
	"Ontario": "Toronto",
	"Alberta": "Edmonton"
]
print(capitals)
capitals.removeValueForKey("BC")


// for-in loop and if statement
let fivonacci = [1, 1, 2, 3, 5, 8, 13, 21, 34]

for isEven in fivonacci {
	if isEven % 2 == 0 {
		print("\(isEven) is a even number")
	}
}

// optional
var optionalString: String? = nil
if let isOptional = optionalString {
	print("not optional")
} else {
	print("nil")
}

// optional, using default value
let nickName: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(fullName ?? nickName)"