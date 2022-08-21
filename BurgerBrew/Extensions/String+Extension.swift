//
//  String+Extension.swift
//  BurgerBrew
//
//  Created by Sewvandi Wickramasinghe on 2022-08-21.
//

import Foundation

extension String {
    var asUrl: URL? {
        return URL(string: self)
    }
}
