//
//  ViewController.swift
//  01_TapIncrement
//
//  Created by Ryo Makabe on 2016-01-07.
//  Copyright © 2016 penginryo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	var count = 0
	
	@IBOutlet weak var countDisplay: UILabel!
	
	@IBAction func infiniteIncrement(sender: UILongPressGestureRecognizer) {
		count += 1
		countDisplay.text = "\(count)"
	}
	
	@IBAction func incrementButton(sender: UIButton) {
		count += 1
		countDisplay.text = "\(count)"
	}
	
	@IBAction func resetButton(sender: UIButton) {
		count = 0
		countDisplay.text = "\(count)"
	}
	
	
	

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

