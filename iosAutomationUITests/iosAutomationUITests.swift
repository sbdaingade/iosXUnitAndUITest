//
//  iosAutomationUITests.swift
//  iosAutomationUITests
//
//  Created by Sachin Daingade on 09/10/19.
//  Copyright © 2019 Sachin Daingade. All rights reserved.
//

import XCTest

class iosAutomationUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testLoginSuccess()
    {
        
      let userName = "sachin"
        let password = "ios123"
        
        let app = XCUIApplication()
        let userTextField = app.textFields["User "]
        userTextField.tap()
        userTextField.typeText(userName)
        XCTAssertTrue(userTextField.exists)
        
      let passwordTextField = app.secureTextFields["Password"]
        passwordTextField.tap()
        passwordTextField.typeText(password)
        XCTAssertTrue(passwordTextField.exists)
        
        app.buttons["Login"].tap()
        
        
    }

}
