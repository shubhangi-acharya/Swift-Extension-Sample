//
//  UIImageView+Swift.swift
//  Swift-extension-sample
//
//  Created by Shubhangi Pandya on 31/01/17.
//  Copyright © 2017 Test. All rights reserved.
//

import Foundation

extension UIImageView {

    func setRoundedImageView() {
        self.clipsToBounds = true
        self.layer.borderColor = uicolor.whitecolor
        self.layer.borderWidth = 10.0
        self.layer.cornerRadius = self.frame.height / 2.0
    }
}
