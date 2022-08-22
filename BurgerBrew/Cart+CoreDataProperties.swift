//
//  Cart+CoreDataProperties.swift
//  BurgerBrew
//
//  Created by kevin antony on 2022-08-22.
//
//

import Foundation
import CoreData


extension Cart {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Cart> {
        return NSFetchRequest<Cart>(entityName: "Cart")
    }

    @NSManaged public var itemName: String?
    @NSManaged public var price: Double
    @NSManaged public var qty: Double
    @NSManaged public var subTotal: Double
    @NSManaged public var total: Double

}

extension Cart : Identifiable {

}
