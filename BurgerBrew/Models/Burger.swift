//
//  Burger.swift
//  BurgerBrew
//
//  Created by Chandima Athapattu on 2022-08-09.
//

import Foundation
import UIKit

struct Burger{
    let image: UIImage
    let title: String
    let price: String
}

let burgers: [Burger] = [
    Burger(image: #imageLiteral(resourceName: "Toro Bravo.jpeg"), title: "Toro Bravo", price: "Rs. 1600.00"),
    Burger(image: #imageLiteral(resourceName: "The Nashville Hot.jpeg"), title: "The Nashville Hot", price: "Rs. 1400.00"),
    Burger(image: #imageLiteral(resourceName: "The Classic.jpeg"), title: "The Classic", price: "Rs. 800.00"),
    Burger(image: #imageLiteral(resourceName: "The Chile Garden Burger.jpeg"), title: "The Chile Garden Burger", price: "Rs. 1800.00"),
    Burger(image: #imageLiteral(resourceName: "The Cheesy Chili.jpeg"), title: "The Cheesy Chilli", price: "Rs. 1600.00"),
    Burger(image: #imageLiteral(resourceName: "The Buttermilk Fried Chicken.jpeg"), title: "The Buttermilk Fried Chicken", price: "Rs. 2000.00"),
    Burger(image: #imageLiteral(resourceName: "Signature Burger.jpeg"), title: "Signature Burger", price: "Rs. 1500.00"),
    Burger(image: #imageLiteral(resourceName: "BBQ Pulled Pork Burger.jpeg"), title: "BBQ Pulled Pork Burger", price: "Rs. 1600.00"),
    Burger(image: #imageLiteral(resourceName: "BBQ Burger.jpeg"), title: "BBQ Burger", price: "Rs. 1200.00")
]
