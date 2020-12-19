//
//  SecondUITest.swift
//  SecondUITest
//
//  Created by Utsav Shrestha on 11/8/20.
//  Copyright © 2020 Nithin. All rights reserved.
//

import XCTest
@testable import iOSUI

class SecondUITest: XCTestCase {
    let app = XCUIApplication()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
       
    }

    func testExampleNew() {

        let slider = XCUIApplication().sliders["slider"]
        slider.tap()
        slider.swipeRight()
        slider.tap()
        slider.swipeLeft()

    }

    func testExample() {

        let app = XCUIApplication()
        app.launch()

        //XCUIApplication().textFields["Button1"]
        //XCUIApplication().textFields["Button1"].typeText("Vegetables")
        app.buttons["Button1"].tap()
        app.navigationBars["iOSUI.SecondView"].buttons["Back"].tap()
       
        app.buttons["Button2"].tap()
        }

    func testProgram() {

        let program = Program("")
        program.newFunc()
        XCTAssertEqual(program.anotherString, "changed string", "value not matching")
    }

    func testRecord() {
        
        let app = XCUIApplication()
        app.launch()
        app/*@START_MENU_TOKEN@*/.staticTexts["Item 1"]/*[[".buttons[\"Item 1\"].staticTexts[\"Item 1\"]",".buttons[\"Button1\"].staticTexts[\"Item 1\"]",".staticTexts[\"Item 1\"]"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.navigationBars["iOSUI.SecondView"].buttons["Back"].tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["Item 2"]/*[[".buttons[\"Item 2\"].staticTexts[\"Item 2\"]",".buttons[\"Button2\"].staticTexts[\"Item 2\"]",".staticTexts[\"Item 2\"]"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    }

    func testUI(someStaticString: StaticString = #file) {

        XCTContext.runActivity(named: "activity name") { _ in

            XCTAssertTrue(app/*@START_MENU_TOKEN@*/.staticTexts["Item 2"]/*[[".buttons[\"Item 2\"].staticTexts[\"Item 2\"]",".buttons[\"Button2\"].staticTexts[\"Item 2\"]",".staticTexts[\"Item 2\"]"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.exists, "Can't find the item 2", file: someStaticString, line: 54)

        }
    }
    
    
    func testAdjustingASlider() {
        let app = XCUIApplication()
        app.launch()
        app.buttons["Button1"].tap()
        app.sliders["slider"].tap()

        app.sliders.element.adjust(toNormalizedSliderPosition: 1)
        
    }
    
    func testTestField() {
        let app = XCUIApplication()
        app.launch()
        
        let textfield = app.textFields["enter"]
        textfield.tap()
        
        textfield.typeText("Vegetables")
        
    }
    
    func testOnOff() {
        let app = XCUIApplication()
        app.launch()
        app.buttons["Button1"].tap()
        app.switches["switch"].tap()
    }
    
    func testProgressView() {
       // let app = XCUIApplication()
        app.launch()
        app/*@START_MENU_TOKEN@*/.staticTexts["Item 1"]/*[[".buttons[\"Item 1\"].staticTexts[\"Item 1\"]",".buttons[\"Button1\"].staticTexts[\"Item 1\"]",".staticTexts[\"Item 1\"]"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        let progressView = app.progressIndicators["progress"]
        XCTAssert(progressView.exists)
        
        let slider = app.sliders["slider"]
        slider.tap()
       
        slider.adjust(toNormalizedSliderPosition: 0.8)
        
        sleep(2)
        let progressValue = progressView.value as? Float
        XCTAssert(progressValue == 0.2)
        
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
