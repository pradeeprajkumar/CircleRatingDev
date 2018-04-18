//
//  ViewController.swift
//  Demo
//
//  Created by Pradeep Rajkumar on 17/04/18.
//  Copyright © 2018 Pradeep Rajkumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var focussedView: UIView!
    
    @IBOutlet weak var ratingView: CircleRatingView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ratingView.setupRatingView(numberOfCircles: 5, numberOfFilled: 3)
        ratingView.layoutSubviews()
    }
}
