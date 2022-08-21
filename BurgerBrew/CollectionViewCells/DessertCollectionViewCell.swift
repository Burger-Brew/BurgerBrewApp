//
//  DessertCollectionViewCell.swift
//  BurgerBrew
//
//  Created by Chandima Athapattu on 2022-08-10.
//

import UIKit

class DessertCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: DessertCollectionViewCell.self)
    //Declare the outlets
    @IBOutlet weak var dessertImageView: UIImageView!
    @IBOutlet weak var dessertTitle: UILabel!
    @IBOutlet weak var dessertPrice: UILabel!
    
    func setup(with dessert: Dessert){
        dessertImageView.image = dessert.image
        dessertTitle.text = dessert.title
        dessertPrice.text = dessert.price
    }
}
