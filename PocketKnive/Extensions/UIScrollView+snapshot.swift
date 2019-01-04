//
//  UIScrollView+snapshot.swift
//  PocketKnive
//
//  Created by J on 03.01.19.
//  Copyright © 2019 at.diddlysqu. All rights reserved.
//

#if canImport(UIKit) && !os(watchOS)
import UIKit

public extension UIScrollView {
    public var snapshot: UIImage? {
        UIGraphicsBeginImageContextWithOptions(contentSize, false, 0)
        defer {
            UIGraphicsEndImageContext()
        }
        guard let context = UIGraphicsGetCurrentContext() else { return nil }
        let previousFrame = frame
        frame = CGRect(origin: frame.origin, size: contentSize)
        layer.render(in: context)
        frame = previousFrame
        return UIGraphicsGetImageFromCurrentImageContext()
    }
}
#endif
