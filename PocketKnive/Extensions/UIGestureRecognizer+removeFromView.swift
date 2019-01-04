//
//  UIGestureRecognizer+removeFromView.swift
//  PocketKnive
//
//  Created by J on 03.01.19.
//  Copyright © 2019 at.diddlysqu. All rights reserved.
//

#if canImport(UIKit) && !os(watchOS)
import UIKit

public extension UIGestureRecognizer {
    public func removeFromView() {
        view?.removeGestureRecognizer(self)
    }
}
#endif
