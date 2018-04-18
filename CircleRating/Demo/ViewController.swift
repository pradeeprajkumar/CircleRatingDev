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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let circleRating = Bundle.main.loadNibNamed("CircleRatingView", owner: self, options: nil)?.first as? CircleRatingView {
            circleRating.setupRatingView(numberOfCircles: 5, numberOfFilled: 3)
            focussedView.addSubview(circleRating)
        }
    }
}
