//
//  iOSUIUITests.swift
//  iOSUIUITests
//
//  Created by Nithin Nizam on 30/12/20.
//  Copyright © 2020 Nithin. All rights reserved.
//

import XCTest

class iOSUIUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLogin() {

        let app = XCUIApplication()

        let backButton = app.navigationBars["iOSUI.SecondView"].buttons["Back"]

        let item1StaticText = app/*@START_MENU_TOKEN@*/.staticTexts["Item 1"]/*[[".buttons[\"Item 1\"].staticTexts[\"Item 1\"]",".buttons[\"Button1\"].staticTexts[\"Item 1\"]",".staticTexts[\"Item 1\"]"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        item1StaticText.tap()
        
        let slider = app.sliders["slider"]

        XCTAssert(slider.exists)

        slider.swipeRight()
        sleep(2)
        slider.swipeLeft()
        sleep(2)
        backButton.tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["Item 2"]/*[[".buttons[\"Item 2\"].staticTexts[\"Item 2\"]",".buttons[\"Button2\"].staticTexts[\"Item 2\"]",".staticTexts[\"Item 2\"]"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        item1StaticText.tap()

        var aString: String?
        // Assertions
        XCTAssert(app.staticTexts["Apple"].exists)
        XCTAssert(true, "Test failed at this line")

        XCTAssertTrue(app.staticTexts["Apple"].exists, "Test failed at this line")
        XCTAssertFalse(false, "Test failed at this line")

        XCTAssertNil(nil, "Test failed at this line")
        XCTAssertNotNil(nil, "Test failed at this line")

        XCTAssertEqual(0, 0, "Test failed at this line")
        XCTAssert(0 == 0)

        XCTAssertNotEqual(0, 1, "Test failed at this line")
        XCTAssert(0 != 1)

        XCTAssertGreaterThan(2, 1, "Test failed at this line")
        XCTAssert(2 > 1)

        XCTAssertLessThan(1, 2, "Test failed at this line")
        XCTAssert(1 < 2)
        let url = NSURL(string: "prefs:root=Settings")

    }

    func testHomeScreen() {

    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
