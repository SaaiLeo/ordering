//
//  UIVIew+Extension.swift
//  coffee
//
//  Created by Sei Mouk on 3/9/24.
//

import UIKit

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get { return cornerRadius}
        set {
            self.layer.cornerRadius = newValue
        }
    }
}
