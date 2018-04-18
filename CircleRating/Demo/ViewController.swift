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
        
        if let customRatingView = Bundle.main.loadNibNamed("CircleRatingView", owner: self, options: nil)?.first as? CircleRatingView {
            customRatingView.setupRatingView(numberOfCircles: 5, numberOfFilled: 1)
            customRatingView.frame = CGRect(x: 30, y: 30, width: 44, height: 9)
            self.view.addSubview(customRatingView)
        }
    }
}
