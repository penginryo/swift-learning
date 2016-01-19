import UIKit
import XCTest

class _2_FoodTrackerTests: XCTestCase {

	// MARK: FoodTracker tests
	
	func testMealInitialization(){
		
		// success case
		let potentialItem = Meal(name: "Ramen", photo: nil, rating: 4)
		XCTAssertNotNil(potentialItem)	// check if potentialItem becomes nil after init
		
		// failure case
		let noName = Meal(name: "", photo: nil, rating: 1)
		XCTAssertNil(noName, "Name is invalid")
		
		let badRating = Meal(name: "bad rating", photo: nil, rating: -5)
		XCTAssertNil(badRating)
	}
}
