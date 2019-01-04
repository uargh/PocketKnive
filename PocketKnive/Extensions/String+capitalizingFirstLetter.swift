//
//  String+capitalizingFirstLetter.swift
//  PocketKnive
//
//  Created by J on 03.01.19.
//  Copyright © 2019 at.diddlysqu. All rights reserved.
//

import Foundation

extension String {
    public func capitalizingFirstLetter() -> String {
        let first = String(self.prefix(1)).capitalized
        let rest = String(self.dropFirst())

        return first + rest
    }

    mutating public func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
}
