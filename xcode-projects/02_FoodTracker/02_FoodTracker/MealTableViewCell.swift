//
//  MealTableViewCell.swift
//  02_FoodTracker
//
//  Created by Ryo Makabe on 2016-01-20.
//  Copyright © 2016 penginryo. All rights reserved.
//

import UIKit

class MealTableViewCell: UITableViewCell {
	
	// MARK: properties
	
	
	@IBOutlet weak var nameLabel: UILabel!
	
	
	@IBOutlet weak var photoImageView: UIImageView!
	
	
	@IBOutlet weak var ratingControl: RatingControl!
	
	
	

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
