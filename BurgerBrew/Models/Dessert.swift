//
//  Dessert.swift
//  BurgerBrew
//
//  Created by Chandima Athapattu on 2022-08-10.
//

import Foundation
import UIKit

struct Dessert{
    let image: UIImage
    let title: String
    let price: String
}

let dessert: [Dessert] = [
    Dessert(image: #imageLiteral(resourceName: "Hazelnut Cupcake.jpeg"), title: "Hazelnut Cupcake", price: "Rs. 800.00"),
    Dessert(image: #imageLiteral(resourceName: "Sweet Potato Fries.jpeg"), title: "Sweet Potato Fries", price: "Rs. 400.00"),
    Dessert(image: #imageLiteral(resourceName: "Vegan Flan.jpeg"), title: "Vegan Flan", price: "Rs. 500.00"),
    Dessert(image: #imageLiteral(resourceName: "Classic Waffles.jpeg"), title: "Clasic Waffles", price: "Rs. 450.00")
]

