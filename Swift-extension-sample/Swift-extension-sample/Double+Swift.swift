//
//  Double+Swift.swift
//  Swift-extension-sample
//
//  Created by Shubhangi Pandya on 31/01/17.
//  Copyright © 2017 Test. All rights reserved.
//

import Foundation

extension Double {
    /// Rounds the double to decimal places value
    func roundTo(places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
