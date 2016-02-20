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

        layer.backgroundColor = UIColor.primaryOrangeColor().CGColor
        layer.cornerRadius = 5
        self.setTitleColor(.whiteColor(), forState: .Normal)
    }
}
