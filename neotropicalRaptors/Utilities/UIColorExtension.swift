//
//  UIColorExtension.swift
//  trySwift
//
//  Created by Natasha Murashev on 2/11/16.
//  Copyright © 2016 NatashaTheRobot. All rights reserved.
//

import UIKit
import DynamicColor

extension UIColor {

    class func mainColor() -> UIColor {
        return UIColor(hexString: "#7D9328")
    }
    
    class func titleColor() -> UIColor {
        return UIColor.mainColor().lightenColor(0.1).desaturatedColor()
    }
    
    class func subtitleColor() -> UIColor {
        return UIColor.darkGrayColor()
    }
    
    class func accentColor() -> UIColor {
        return UIColor(hexString: "#D6AF29")
    }
    
    class func twitterBlue() -> UIColor {
        return UIColor(hexString: "#4FD5D6").darkenColor(0.1).desaturatedColor()
        //return UIColor(hexString: "#4099FF")
    }
}
