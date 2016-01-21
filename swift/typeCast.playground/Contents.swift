import UIKit

class Smartphone {
	var name: String
	init(name: String){
		self.name = name
	}
}
class iPhone: Smartphone {
	var manufacture: String
	var release: Int
	var os: String
	init(name: String, manufacture: String, release: Int, os: String) {
		self.manufacture = manufacture
		self.release = release
		self.os = os
		super.init(name: name)
	}
}
class Nexus: Smartphone {
	var manufacture: String
	var release: Int
	var os: String
	init(name: String, manufacture: String, release: Int, os: String) {
		self.manufacture = manufacture
		self.release = release
		self.os = os
		super.init(name: name)
	}
}
class BlackBerry: Smartphone {
	var manufacture: String
	var release: Int
	var os: String
	init(name: String, manufacture: String, release: Int, os: String) {
		self.manufacture = manufacture
		self.release = release
		self.os = os
		super.init(name: name)
	}
}


var smartPhones = [iPhone(name: "iPhone5s", manufacture: "Apple", release: 2013, os: "iOS"),
				   Nexus(name: "Nexus6", manufacture: "Motorola", release: 2014, os: "Android"),
				   BlackBerry(name: "BlackBerry Bold 9900", manufacture: "RIM", release: 2011, os: "BlackBerry")]

// user as? when object type is unknown
//	(this case variable phone can be
//	either iPhone class or Nexus class -> use as?)
for item in smartPhones {
	if let phone = item as? iPhone {
		print("iOS is the best")
	} else if let phone = item as? Nexus {
		print("so... you still using iPhone? It's getting rid of the headphone jack, crap")
	} else if let phone = item as? BlackBerry {
		print("are you still alive?")
	}
}


var iphones = [iPhone(name: "iPhone 3GS", manufacture: "Apple", release: 2009, os: "iOS3"),
			   iPhone(name: "iPhone 6s", manufacture: "Apple", release: 2015, os: "iOS9"),
			   iPhone(name: "iPhone 5", manufacture: "Apple", release: 2012, os: "iOS6") ]
for model in iphones {
	print("\(model.name)")
}


var mix = [Any]()
mix.append("WindoesPhone")
mix.append(2020)
mix.appemd(iPhone(name: "iPhone", manufacture: "Apple", release: 2007, os: "iOS"))
mix.append("This is tuple", 1111)

for item in mix {
	switch item {
		case 0 as Int:
			print("zero in Int")
		case 0 as Double:
			print("this Zero is Double type")
		case let someInt as Int:
			print("Int....")
		case let phone as iPhone:
			print("I've got enough iphones'")
		case is Int:
			print("just an int number")
		case is Double:
			print("a double number, not gonna display")
		default:
			print("default output")
	}
}
