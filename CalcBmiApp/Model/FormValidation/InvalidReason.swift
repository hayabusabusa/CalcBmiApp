//
//  InvalidReason.swift
//  CalcBmiApp
//
//  Created by 山田隼也 on 2020/05/02.
//  Copyright © 2020 Shunya Yamada. All rights reserved.
//

import Foundation

enum InvalidReason {
    case notNumber
    case notDoubleValue
}

extension InvalidReason: CustomStringConvertible {
    var description: String {
        switch self {
        case .notNumber:
            return "数値ではありません"
        case .notDoubleValue:
            return "実数値ではありません"
        }
    }
}
