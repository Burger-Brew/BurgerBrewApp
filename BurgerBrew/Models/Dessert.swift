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
    let description: String
}

let dessert: [Dessert] = [
    Dessert(image: #imageLiteral(resourceName: "Hazelnut Cupcake.jpeg"), title: "Hazelnut Cupcake", price: "Rs. 800.00", description: "Eggs, granulated sugar, brown sugar, oil, and vanilla"),
    Dessert(image: #imageLiteral(resourceName: "Sweet Potato Fries.jpeg"), title: "Sweet Potato Fries", price: "Rs. 400.00", description: "French fries, chips, finger chips are batonnet potatoes."),
    Dessert(image: #imageLiteral(resourceName: "Vegan Flan.jpeg"), title: "Vegan Flan", price: "Rs. 500.00", description: "Graham cracker crumbs, granulated sugar, unsalted butter, pure vanilla extract, eggs"),
    Dessert(image: #imageLiteral(resourceName: "Classic Waffles.jpeg"), title: "Clasic Waffles", price: "Rs. 450.00", description: "Made from flour, butter, brown sugar, yeast, milk, and eggs")
]

