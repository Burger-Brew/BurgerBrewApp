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
    let description: String
}

let beverage: [Beverage] = [
    Beverage(image: #imageLiteral(resourceName: "Ice Lemon Latte.png"), title: "Ice Lemon Latte", price: "800.00", description: "Ice, white sugar"),
    Beverage(image: #imageLiteral(resourceName: "Chocolate Overdosed.jpeg"), title: "Chocolate Overdosed", price: "1200.00", description: "Chocolate milk, vanilla nonfat frozen yogurt, ice"),
    Beverage(image: #imageLiteral(resourceName: "Berries'O'Berries.jpeg"), title: "Berries'O'Berries", price: "1500.00", description: "Strawberry milk, vanilla nonfat frozen yogurt, ice"),
    Beverage(image: #imageLiteral(resourceName: "Orange Crush.png"), title: "Orange Crush", price: "1000.00", description: "Orange, white sugar")
]
