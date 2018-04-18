//
//  CircleRatingView.swift
//  CircleRating
//
//  Created by Pradeep Rajkumar on 18/04/18.
//  Copyright © 2018 Pradeep Rajkumar. All rights reserved.
//

import UIKit
import Foundation

class CircleRatingView: UIStackView {
    var circleViewsArray: [CircleView] = []
    var numberOfCircles: Int!
    var numberOfFilled: Int!
    
    func setupRatingView(numberOfCircles: Int!, numberOfFilled:Int!) {
        for index in 0..<numberOfCircles {
            let isFilled = numberOfFilled > index ? true:false
            let circle = CircleView.instanceFromNib()
            circle.isFilled = isFilled
            circleViewsArray.append(circle)
            self.addArrangedSubview(circle)
        }
    }
}
