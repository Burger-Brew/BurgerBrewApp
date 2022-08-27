//
//  BurgerBrewTests.swift
//  BurgerBrewTests
//
//  Created by Chandima Athapattu on 2022-07-25.
//

import XCTest
@testable import BurgerBrew

class BurgerBrewTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    // Confirm that the Burger initializer returns a Burger object when passed valid parameters.
    func testBurgerInitializationSucceeds() {
        // Burger name is not empty and return a successful object
        let notEmptyStringBurger = Burger.init(image: #imageLiteral(resourceName: "Toro Bravo.jpeg"), title: "Toro Bravo", price: "1600.00", description: "Roasted hatch chilies, candied bacon, white cheddar, andhabañero aioli")
        XCTAssertNotNil(notEmptyStringBurger)
        
        // Dessert name is not empty and return a successful object
        let notEmptyStringDessert = Dessert.init(image: #imageLiteral(resourceName: "Hazelnut Cupcake.jpeg"), title: "Hazelnut Cupcake", price: "800.00", description: "Eggs, granulated sugar, brown sugar, oil, and vanilla")
        XCTAssertNotNil(notEmptyStringDessert)
        
        // Burger name is not empty and return a successful object
        let notEmptyStringBeverage = Beverage.init(image: #imageLiteral(resourceName: "Orange Crush.png"), title: "Orange Crush", price: "1000.00", description: "Orange, white sugar")
        XCTAssertNotNil(notEmptyStringBeverage)
    }
    
}
