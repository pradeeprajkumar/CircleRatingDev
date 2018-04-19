//
//  ViewController.swift
//  Demo
//
//  Created by Pradeep Rajkumar on 17/04/18.
//  Copyright © 2018 Pradeep Rajkumar. All rights reserved.
//

import UIKit
import CircleRating

class ViewController: UIViewController {

    @IBOutlet weak var focussedView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let customRatingView = Bundle.init(for: CircleRatingView.self).loadNibNamed("CircleRatingView", owner: nil, options: nil)?.first as? CircleRatingView {
            customRatingView.setupRatingView(numberOfCircles: 5, numberOfFilled: 5)
            customRatingView.frame = CGRect(x: 30, y: 100, width: 44, height: 9)
            self.view.addSubview(customRatingView)
        }
    }
}
