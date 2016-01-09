//
//  LoginButton.swift
//  Hannibal
//
//  Created by David Barsky on 1/9/16.
//  Copyright © 2016 David Barsky. All rights reserved.
//

import UIKit

@IBDesignable
class LoginButton: UIButton {
    override func layoutSubviews() {
        super.layoutSubviews()

        layer.backgroundColor = UIColor(red:0.969,  green:0.580,  blue:0.118, alpha:1).CGColor
        layer.cornerRadius = 5
        self.setTitleColor(UIColor.whiteColor(), forState: .Normal)
    }
}
