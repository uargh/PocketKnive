//
//  UILabel+rotation.swift
//  PocketKnive
//
//  Created by J on 03.01.19.
//  Copyright © 2019 at.diddlysqu. All rights reserved.
//

import Foundation
import UIKit

extension UILabel {
    @IBInspectable public var rotation: Int {
        get {
            return 0
        }
        set {
            let radian = CGFloat(.pi * CGFloat(newValue) / 180)
            self.transform = CGAffineTransform(rotationAngle: radian)
        }
    }
}
