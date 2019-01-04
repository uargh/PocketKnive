//
//  UIViewController+presentOverCurrentContext.swift
//  PocketKnive
//
//  Created by J on 03.01.19.
//  Copyright © 2019 at.diddlysqu. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    public func presentOverCurrentContext(viewController: UIViewController, animated: Bool, completion: (() -> Void)?) {
        viewController.modalPresentationStyle = .overCurrentContext
        viewController.modalTransitionStyle = .coverVertical
        self.present(viewController, animated: animated, completion: completion)
    }
}
