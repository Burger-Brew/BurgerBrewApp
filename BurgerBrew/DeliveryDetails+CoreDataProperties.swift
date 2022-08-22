//
//  DeliveryDetails+CoreDataProperties.swift
//  BurgerBrew
//
//  Created by kevin antony on 2022-08-22.
//
//

import Foundation
import CoreData


extension DeliveryDetails {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<DeliveryDetails> {
        return NSFetchRequest<DeliveryDetails>(entityName: "DeliveryDetails")
    }

    @NSManaged public var firstname: String?
    @NSManaged public var address: String?
    @NSManaged public var mobile: Int32
    @NSManaged public var lastName: String?
    @NSManaged public var email: String?
    @NSManaged public var city: String?
    @NSManaged public var postalCode: Int16

}

extension DeliveryDetails : Identifiable {

}
