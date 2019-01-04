//
//  Date+weekOfYear.swift
//  PocketKnive
//
//  Created by J on 03.01.19.
//  Copyright © 2019 at.diddlysqu. All rights reserved.
//

import Foundation

extension Date {
    public var weekOfYear: Int {
        return Calendar.current.component(.weekOfYear, from: self)
    }
}
