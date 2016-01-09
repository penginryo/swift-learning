//: Playground - noun: a place where people can play

import UIKit

func fizzBuzz(n: Int) -> String {
	var result = ""
	
	if n % 3 == 0 && n % 5 == 0 {
		result = "FizzBuzz"
	} else if n % 3 == 0 {
		result = "Fizz"
	} else if n % 5 == 0 {
		result = "Buzz"
	} else {
		result = String(n)
	}
	return result
}


let n = 0

fizzBuzz(n)
