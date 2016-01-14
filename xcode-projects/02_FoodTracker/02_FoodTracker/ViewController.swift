//
//  ViewController.swift
//  02_FoodTracker
//
//  Created by Ryo Makabe on 2016-01-13.
//  Copyright © 2016 penginryo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
	
	// MARK: properties
	
	@IBOutlet weak var nameTextField: UITextField!
	
	@IBOutlet weak var mealNameLabel: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()

		nameTextField.delegate = self
	}
	
	// MARK: UITextFieldDelegate
	
	func textFieldShouldReturn(textField: UITextField) -> Bool {
		textField.resignFirstResponder()
		return true
	}
	
	func textFieldDidEndEditing(textField: UITextField) {
		mealNameLabel.text = textField.text
		nameTextField.text = ""
	}
	
	// MARK: actions

	@IBAction func setDefaultLabelText(sender: UIButton) {
		mealNameLabel.text = "Default text"
		nameTextField.text = ""
	}
	
	
}

