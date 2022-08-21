//
//  BeverageCollectionViewCell.swift
//  BurgerBrew
//
//  Created by Chandima Athapattu on 2022-08-11.
//

import UIKit

class BeverageCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: BeverageCollectionViewCell.self)
    //Declare the outlets
    @IBOutlet weak var beverageImageView: UIImageView!
    @IBOutlet weak var beverageTitle: UILabel!
    @IBOutlet weak var beveragePrice: UILabel!
    
    
    func setup(with beverage: Beverage){
        beverageImageView.image = beverage.image
        beverageTitle.text = beverage.title
        beveragePrice.text = beverage.price
    }
}

