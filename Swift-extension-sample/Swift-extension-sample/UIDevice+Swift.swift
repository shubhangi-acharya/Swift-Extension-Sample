//
//  UIDevice+Swift.swift
//  Swift-extension-sample
//
//  Created by Shubhangi Pandya on 31/01/17.
//  Copyright © 2017 Test. All rights reserved.
//

import Foundation
import UIKit

struct Device {
    
    // MARK: - Singletons
    static var CurrentDevice: UIDevice {
        struct Singleton {
            static let device = UIDevice.current
        }
        return Singleton.device
    }
    
    static var CurrentDeviceWidth: CGFloat {
        struct Singleton {
            static let width = UIScreen.main.bounds.size.width
        }
        return Singleton.width
    }
    
    static var CurrentDeviceHeight: CGFloat {
        struct Singleton {
            static let height = UIScreen.main.bounds.size.height
        }
        return Singleton.height
    }
    
    // MARK: - Device Idiom Checks
    
    static func isPhone() -> Bool {
        return CurrentDevice.userInterfaceIdiom == .phone
    }
    
    // MARK: - Device Size Checks
    enum Widths: CGFloat {
        case Inches_4 = 320
        case Inches_4_7 = 375
        case Inches_5_5 = 414
    }
    
    enum Heights: CGFloat {
        case Inches_3_5 = 480
        case Inches_4 = 568
        case Inches_4_7 = 667
        case Inches_5_5 = 736
    }
    
    static func isSize(height: Heights) -> Bool {
        return CurrentDeviceHeight == height.rawValue
    }
    
    static var CURRENT_SIZE: String {
        if IS_3_5_INCHES() {
            return "3.5 Inches"
        } else if IS_4_INCHES() {
            return "4 Inches"
        } else if IS_4_7_INCHES() {
            return "4.7 Inches"
        } else if IS_5_5_INCHES() {
            return "5.5 Inches"
        }
        return "\(CurrentDeviceHeight) Points"
    }
    
    // MARK: 3.5 Inch Checks
    static func IS_3_5_INCHES() -> Bool {
        return isPhone() && isSize(height: .Inches_3_5)
    }
    
    // MARK: 4 Inch Checks
    static func IS_4_INCHES() -> Bool {
        return isPhone() && isSize(height: .Inches_4)
    }
    
    // MARK: 4.7 Inch Checks
    static func IS_4_7_INCHES() -> Bool {
        return isPhone() && isSize(height: .Inches_4_7)
    }
    
    // MARK: 5.5 Inch Checks
    static func IS_5_5_INCHES() -> Bool {
        return isPhone() && isSize(height: .Inches_5_5)
    }
    
}
