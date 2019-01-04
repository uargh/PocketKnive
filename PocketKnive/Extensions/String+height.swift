//
//  String+height.swift
//  PocketKnive
//
//  Created by J on 03.01.19.
//  Copyright © 2019 at.diddlysqu. All rights reserved.
//

import Foundation

extension String {
    public func height(forWidth width: CGFloat, attributes: [NSAttributedString.Key : Any]?) -> CGFloat {
        let attributedString = NSMutableAttributedString(string: self, attributes: attributes)
        let constraintRect = CGSize(width: width, height: .greatestFiniteMagnitude)
        let boundingBox = attributedString.boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, context: nil)

        return ceil(boundingBox.height)
    }
}
