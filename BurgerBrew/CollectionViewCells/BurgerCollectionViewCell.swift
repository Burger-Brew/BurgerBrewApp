//
//  BurgerCollectionViewCell.swift
//  BurgerBrew
//
//  Created by Chandima Athapattu on 2022-08-09.
//

import UIKit

class BurgerCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: BurgerCollectionViewCell.self)
    //Declare outlets
    @IBOutlet weak var burgerImageView: UIImageView!
    @IBOutlet weak var burgerTitle: UILabel!
    @IBOutlet weak var burgerPrice: UILabel!
    
    func setup(burger: Burger){
        burgerImageView.image = burger.image
        burgerTitle.text = burger.title
        burgerPrice.text = burger.price
    }
    
    
}

