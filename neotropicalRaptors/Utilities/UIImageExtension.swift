//
//  UIImageExtension.swift
//  trySwift
//
//  Created by Natasha Murashev on 2/16/16.
//  Copyright © 2016 NatashaTheRobot. All rights reserved.
//

import UIKit
import Toucan

extension UIImage {
    
    @nonobjc static let conferenceDefaultImage = Toucan(image: UIImage(named: "conferenceLogo")!).maskWithEllipse().image
}
