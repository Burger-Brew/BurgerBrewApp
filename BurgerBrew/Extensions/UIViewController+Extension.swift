//
//  UIViewController+Extension.swift
//  BurgerBrew
//
//  Created by Sewvandi Wickramasinghe on 2022-08-20.
//

import UIKit

extension UIViewController {
    
    static var identifier: String {
        return String(describing: self)
    }
    
    static func instantiate() -> Self {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return storyboard.instantiateViewController(identifier: identifier) as! Self
    }
}

