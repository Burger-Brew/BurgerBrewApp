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
    let description: String
}

let burgers: [Burger] = [
    Burger(image: #imageLiteral(resourceName: "Toro Bravo.jpeg"), title: "Toro Bravo", price: "1600.00", description: "Roasted hatch chilies, candied bacon, white cheddar, andhabañero aioli"),
    Burger(image: #imageLiteral(resourceName: "The Nashville Hot.jpeg"), title: "The Nashville Hot", price: "1400.00", description: "Habanero Aioli, Coleslaw, Dill Pickles, andNashville Spices"),
    Burger(image: #imageLiteral(resourceName: "The Classic.jpeg"), title: "The Classic", price: "800.00", description: "American cheese, pickles, lettuce, tomato, caramelised onions, Burger Shop dressing"),
    Burger(image: #imageLiteral(resourceName: "The Chile Garden Burger.jpeg"), title: "The Chile Garden Burger", price: "1800.00", description: "Burger with roasted hatch chilies, candied bacon, white cheddar, and habañero aioli. "),
    Burger(image: #imageLiteral(resourceName: "The Cheesy Chili.jpeg"), title: "The Cheesy Chilli", price: "1600.00", description: "Homemade chilli, melted cheese, BBQ ranch,caramelised onions"),
    Burger(image: #imageLiteral(resourceName: "The Buttermilk Fried Chicken.jpeg"), title: "The Buttermilk Fried Chicken", price: "2000.00", description: "Angus Beef Burger topped with Fries , Chilli, Onions, Jalapeños, Bacon, Cheese Sauce, American cheese,BBQ Ranch"),
    Burger(image: #imageLiteral(resourceName: "Signature Burger.jpeg"), title: "Signature Burger", price: "1500.00", description: "Angus beef topped with charred red onion, white cheddar, demi glaze, and creole mustard aioli"),
    Burger(image: #imageLiteral(resourceName: "BBQ Pulled Pork Burger.jpeg"), title: "BBQ Pulled Pork Burger", price: "1600.00", description: "Slaw, Pickled Onion, Beef Patty, White Cheddar"),
    Burger(image: #imageLiteral(resourceName: "BBQ Burger.jpeg"), title: "BBQ Burger", price: "1200.00", description: "Bacon, crispy onion ring American cheese and BBQ sauce")
]
