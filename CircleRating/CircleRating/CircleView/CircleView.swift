//
//  CircleView.swift
//  Demo
//
//  Created by Pradeep Rajkumar on 17/04/18.
//  Copyright © 2018 Pradeep Rajkumar. All rights reserved.
//

import UIKit

@IBDesignable
public class CircleView: UIView {
    
    //MARK: Storyboard customizations
    @IBInspectable var borderWidth: CGFloat = 2.0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            self.layer.cornerRadius = self.frame.size.width/2
        }
    }
    
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = self.frame.size.width/2
    }
    
    override public func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
    }
    
    //IBOutlets
    @IBOutlet weak var innerCircleView: CircleView!
    
    
    
    class func instanceFromNib() -> CircleView {
        return Bundle.init(for: CircleView.self).loadNibNamed("CircleView", owner: nil, options: nil)?.first as! CircleView
    }
    
    
    var isFilled: Bool = true {
        didSet {
            self.innerCircleView.isHidden = !isFilled
        }
    }
}
