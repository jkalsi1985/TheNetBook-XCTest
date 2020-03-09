//
//  ProfileScreen.swift
//  thenetbook
//
//  Created by Jagdeep Kalsi on 1/19/17.
//  Copyright © 2017 Net-a-Porter. All rights reserved.
//

import Foundation
import XCTest
import XCTest_Gherkin

class ProfileScreen {
    
    let settingButton = "Settings"

    var settingButtonElement : XCUIElement {
        get {
            return XCUIApplication().buttons[settingButton]
        }
    }
    
    func tapOnSettingsButton() {
        settingButtonElement.tap()
        sleep(2)
    }
}
