//
//  UIButtonExtension.swift
//  fusion
//
//  Created by 市東 on 2025/01/01.
//

import UIKit
import Then

extension UIButton {

    func setStyles(type: UIButton.Configuration, title: String, textColor: UIColor, bgColor: UIColor, padding: NSDirectionalEdgeInsets, fontStyle: UIFont) {
        self.do {
            $0.configuration = type
            $0.configuration?.contentInsets = padding
            $0.setTitle(title, for: .normal)
            $0.tintColor = bgColor
            $0.configuration?.titleTextAttributesTransformer =
            UIConfigurationTextAttributesTransformer { incoming in
                var out = incoming
                out.font = fontStyle
                out.foregroundColor = textColor
                return out
            }
        }
    }
}
