//
//  CommonScreen.swift
//  thenetbook
//
//  Created by Jagdeep Kalsi on 1/12/17.
//  Copyright © 2017 Net-a-Porter. All rights reserved.
//

import Foundation
import XCTest
import XCTest_Gherkin

class CommonScreen {
    
    let app = XCUIApplication()
    let backButton = "back button"
    
    var backButtonElement : XCUIElement {
        get {
            return XCUIApplication().buttons[backButton]
        }
    }
    
    func dismissLocationPopUp() {
        if app.alerts["Allow “The NET SET” to access your location while you use the app?"].buttons["Allow"].exists {
            app.tap()
        }
        return
    }
    
    func dismissNotificationPopUp() {
        if app.alerts["“The NET SET” Would Like to Send You Notifications"].buttons["Allow"].exists {
            app.tap()
        }
        return
    }
    
    func tapOnBackButton() {
        backButtonElement.tap()
    }
}

