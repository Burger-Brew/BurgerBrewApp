//
//  CartList+CoreDataProperties.swift
//  BurgerBrew
//
//  Created by kevin antony on 2022-08-23.
//
//

import Foundation
import CoreData


extension CartList {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CartList> {
        return NSFetchRequest<CartList>(entityName: "CartList")
    }

    @NSManaged public var itemName: String?
    @NSManaged public var qty: Double
    @NSManaged public var subTotal: Double
    @NSManaged public var price: Double

}

extension CartList : Identifiable {

}
