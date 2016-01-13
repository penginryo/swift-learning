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


// switch
let color: String = "black"
switch color {
	case "red":
		print("flame")
	case "blue":
		print("ocean")
	case "black":
		print("night")
	default:
		print("none")
}


// while
var n: Int = 2
while n <= 200 {
	n *= 2
}


// function
func getBMI(weight: Double, height: Double) -> Double {
	return weight / (height * height)
}
let myBMI = getBMI(52.5, height: 1.74)


// function with undefined arguments
func average(numbers: Int...) -> Int {
	var sum = 0
	var numOfInputs = 0
	for n in numbers {
		sum += n
		numOfInputs += 1
	}
	
	return sum / numOfInputs
}
average(3, 5, 10)


// function return function
func first() -> ((Int) -> Int) {
	func second(input: Int) -> Int {
		return input * 2
	}
	return second
}
var result = first()
result(10)


// class and inheritance
class NamedShape {
	var numOfSides = 0
	var name: String
	
	init(name: String) {
		self.name = name
	}
	
	func simpleDescription() -> String {
		return "A shape with \(numOfSides) sides"
	}
}
class Square: NamedShape {
	var sideLength: Double
	
	init(sideLength: Double, name: String) {
		self.sideLength = sideLength
		super.init(name: name)
		numOfSides = 4
	}
	
	func area() -> Double {
		return sideLength * sideLength
	}
	
	override func simpleDescription() -> String {
		return "A square with sides of length \(sideLength)"
	}
}
let s = Square(sideLength: 2.1, name: "square")
s.area()
s.simpleDescription()

class Circle: NamedShape {
	var radius: Double
	
	init(radius: Double, name: String) {
		self.radius = radius
		super.init(name: name)
	}
	
	func area() -> Double {
		return radius * radius * 3.14
	}
	
	override func simpleDescription() -> String {
		return "A circle with radius of length \(radius)"
	}
}

let c = Circle(radius: 5.5, name: "circle")
c.area()
c.simpleDescription()


// enum with type
enum Rank: Int {
	case ace = 1
	case two, three, four, five, six, seven, eight, nine, ten
	case jack, queen, king
	func simpleDescription() -> String {
		switch self {
			case .ace:
				return "ace"
			case .jack:
				return "jack"
			case .queen:
				return "queen"
			case .king:
				return "king"
			default:
				return String(self.rawValue)
		}
	}
}
let ace = Rank.ace
let aceRaw = ace.rawValue

let king = Rank.init(rawValue: 13)
print(king)


// enum with no type
enum Suit {
	case Spades, Hearts, Diamonds, Clubs
	func simpleDescription() -> String {
		switch self {
			case .Spades:
				return "spades"
			case .Hearts:
				return "hearts"
			case .Diamonds:
				return "diamonds"
			case .Clubs:
				return "clubs"
		}
	}
}

let hearts = Suit.Hearts
let heartsDescription = hearts.simpleDescription()


// struct
struct Card {
	var rank: Rank
	var suit: Suit
	func simpleDescription() -> String {
		return "\(rank.simpleDescription()) of \(suit.simpleDescription())"
	}
}
let fiveHearts = Card(rank: .five, suit: .Hearts)
let description = fiveHearts.simpleDescription()


// protocols
protocol ExampleProtocol {
	var simpleDescription: String { get }
	func adjust()
}
class SimpleClass: ExampleProtocol {
	var simpleDescription: String = "a simple class"
	var anotherProperty: Int = 11903
	func adjust() {
		simpleDescription += "100% adjusted"
	}
}
var instance = SimpleClass()
instance.adjust()
let instanceDescription = instance.simpleDescription


