//
//  fontExtention.swift
//  fusion
//
//  Created by 市東 on 2025/01/01.
//

import UIKit
import RswiftResources

enum CustomFontStyles: CGFloat {
    case title = 24
    case subtitle = 20
    case main = 16
    case small = 14
    case moreSmall = 12
    case superSmall = 8
}

extension UIFont {

    static func customStyle(style: CustomFontStyles, weight: Weight) -> UIFont {
        let locale = R.string.localizable.local_key()
        switch locale {
        case "ja":
            return UIFont.systemFont(ofSize: style.rawValue + 1, weight: weight)
        case "en":
            return UIFont.systemFont(ofSize: style.rawValue, weight: weight)
        default:
            return UIFont.systemFont(ofSize: 16, weight: .regular)
        }

    }
}
