//
//  Beverage.swift
//  BurgerBrew
//
//  Created by Chandima Athapattu on 2022-08-11.
//

import Foundation
import UIKit

struct Beverage{
    let image: UIImage
    let title: String
    let price: String
}

let beverage: [Beverage] = [
    Beverage(image: #imageLiteral(resourceName: "Ice Lemon Latte.png"), title: "Ice Lemon Latte", price: "Rs. 800.00"),
    Beverage(image: #imageLiteral(resourceName: "Chocolate Overdosed.jpeg"), title: "Chocolate Overdosed", price: "Rs. 1200.00"),
    Beverage(image: #imageLiteral(resourceName: "Berries'O'Berries.jpeg"), title: "Berries'O'Berries", price: "Rs. 1500.00"),
    Beverage(image: #imageLiteral(resourceName: "Orange Crush.png"), title: "Orange Crush", price: "Rs. 1000.00")
]
