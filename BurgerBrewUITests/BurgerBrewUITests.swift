//
//  BurgerBrewUITests.swift
//  BurgerBrewUITests
//
//  Created by Chandima Athapattu on 2022-07-25.
//

import XCTest

class BurgerBrewUITests: XCTestCase {
    
    func testAppLaunch(){
        let app = XCUIApplication();
        app.launch()
    }
    
    func testBurgerGridNavigation(){
        let app = XCUIApplication();
        app.launch()
        let elementsQuery = XCUIApplication().scrollViews.otherElements
        elementsQuery.images["Burgers"].tap()
        elementsQuery.navigationBars["Burgers"].buttons["Back"].tap()
        XCTAssertTrue(elementsQuery.images["Burgers"].exists)
    }
    
    func testDessertGridNavigation(){
        let app = XCUIApplication();
        app.launch()
        let elementsQuery = XCUIApplication().scrollViews.otherElements
        elementsQuery.images["Desserts"].tap()
        elementsQuery.navigationBars["Dessert"].buttons["Back"].tap()
        XCTAssertTrue(elementsQuery.images["Desserts"].exists)
    }
    
    func testBeverageGirdNavigation(){
        let app = XCUIApplication();
        app.launch()
        let elementsQuery = XCUIApplication().scrollViews.otherElements
        elementsQuery.images["Beverage-1"].tap()
        elementsQuery.navigationBars["Beverage"].buttons["Back"].tap()
        XCTAssertTrue(elementsQuery.images["Beverage-1"].exists)
    }
    
    func testItemDetailsView(){
        let app = XCUIApplication();
        app.launch()
        let elementsQuery = XCUIApplication().scrollViews.otherElements
        elementsQuery.images["Burgers"].tap()
        elementsQuery.collectionViews.cells.otherElements.containing(.staticText, identifier:"Toro Bravo").children(matching: .image).element.tap()
        XCTAssertTrue(app.staticTexts["Toro Bravo"].exists)
        
    }
    
    func testAddToCart(){
        let app = XCUIApplication();
        app.launch()
        let elementsQuery = app.scrollViews.otherElements
        let burgersImage = elementsQuery.images["Burgers"]
        burgersImage.tap()
        elementsQuery.collectionViews.cells.otherElements.containing(.staticText, identifier:"Toro Bravo").children(matching: .image).element.tap()
        XCTAssertTrue(app.staticTexts["Add To Cart"].exists)
    }
}


