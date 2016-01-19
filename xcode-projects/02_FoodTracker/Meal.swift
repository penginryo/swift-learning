//
//  Meal.swift
//  02_FoodTracker
//
//  Created by Ryo Makabe on 2016-01-19.
//  Copyright © 2016 penginryo. All rights reserved.
//

import UIKit

class Meal {
	// MARK: properties
	
	var name: String
	var photo: UIImage?
	var rating: Int
	
	// MARK: init
	init?(name: String, photo: UIImage?, rating: Int){
		self.name = name
		self.photo = photo
		self.rating = rating
		
		if name.isEmpty || rating < 0 {
			return nil
		}
	}
}