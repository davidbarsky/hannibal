//
//  DarkBackgroundLoginView.swift
//  Hannibal
//
//  Created by David Barsky on 3/3/16.
//  Copyright © 2016 David Barsky. All rights reserved.
//

import UIKit

@IBDesignable
class LoginBackgroundView: UIView {

    override func layoutSubviews() {
        super.layoutSubviews()

        self.backgroundColor = UIColor.darkPurpleColor()
    }
}
