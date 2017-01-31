//
//  Date+Swift.swift
//  Swift-extension-sample
//
//  Created by Shubhangi Pandya on 31/01/17.
//  Copyright © 2017 Test. All rights reserved.
//

import Foundation

extension Date {
    struct dateFormatter {
        static let DDMMMYYYY: DateFormatter = {
            let formatter = DateFormatter()
            formatter.dateFormat = "dd MMM, yyyy"
            return formatter
        }()
        
        static let YYYYMMDD: DateFormatter = {
            let formatter = DateFormatter()
            formatter.dateFormat = "yyyy-MM-dd"
            return formatter
        }()
    }
    
    var yymmddDate: String {
        return dateFormatter.YYYYMMDD.string(from: self)
    }
    var ddmmyyDate: String {
        return dateFormatter.DDMMMYYYY.string(from: self)
    }
}
