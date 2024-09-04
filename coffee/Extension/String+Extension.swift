//
//  String+Extension.swift
//  coffee
//
//  Created by Sei Mouk on 4/9/24.
//

import Foundation

extension String {
    var asUrl: URL? {
        return URL(string: self)
    }
}
