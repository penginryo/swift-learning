//
//  MealViewController.swift
//  02_FoodTracker
//
//  Created by Ryo Makabe on 2016-01-13.
//  Copyright © 2016 penginryo. All rights reserved.
//

import UIKit

class MealViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
	
	// MARK: properties
	
	@IBOutlet weak var nameTextField: UITextField!
	
	@IBOutlet weak var photoImageView: UIImageView!
	
	@IBOutlet weak var ratingControl: RatingControl!
	
	var meal: Meal?
	
	@IBOutlet weak var saveButton: UIBarButtonItem!
	
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
	}
	
	// MARK: UIImagePickerControllerDelegate
	
	func imagePickerControllerDidCancel(picker: UIImagePickerController) {
		dismissViewControllerAnimated(true, completion: nil)
	}
	
	func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
		let selectedImage = info[UIImagePickerControllerOriginalImage] as! UIImage
		
		photoImageView.image = selectedImage
		
		dismissViewControllerAnimated(true, completion: nil)
	}
	
	// MARK: navigation
	
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		if saveButton === sender {
			let name = nameTextField.text ?? ""
			let photo = photoImageView.image
			let rating = ratingControl.rating
			
			meal = Meal(name: name, photo: photo, rating: rating)
		}
	}
	
	// MARK: actions

	@IBAction func selectImageFromPhotoLibrary(sender: UITapGestureRecognizer) {
		// hide the keyboard
		nameTextField.resignFirstResponder()
		
		let imagePickerController = UIImagePickerController()
		
		// only allows photos to be selected, not taken
		imagePickerController.sourceType = .PhotoLibrary
		
		imagePickerController.delegate = self
		
		presentViewController(imagePickerController, animated: true, completion: nil)
	}
}

