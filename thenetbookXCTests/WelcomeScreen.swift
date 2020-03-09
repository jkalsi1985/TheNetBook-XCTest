//
//  WelcomeScreen.swift
//  thenetbook
//
//  Created by Jagdeep Kalsi on 1/10/17.
//  Copyright © 2017 Net-a-Porter. All rights reserved.
//

import Foundation
import XCTest
import XCTest_Gherkin

class WelcomeScreen {
    
    let netsetIntroMessage = "Netset intro message"
    let signInWithNAPAccountButton = "Sign in with your account"
    let registerWithNewNAPAccountButton = "Register for a new account"
    
    var netsetIntroMessageElement : XCUIElement {
        get {
            return XCUIApplication().staticTexts[netsetIntroMessage]
        }
    }
    
    var signInWithNAPAccountButtonElement : XCUIElement {
        get {
            return XCUIApplication().buttons[signInWithNAPAccountButton]
        }
    }
    
    var registerWithNewNAPAccountButtonElement : XCUIElement {
        get {
            return XCUIApplication().buttons[registerWithNewNAPAccountButton]
        }
    }
    
    func tapOnSignInWithNAPButton() {
        signInWithNAPAccountButtonElement.tap()
    }
    
    func tapOnRegisterWithNewAccountButton() {
        registerWithNewNAPAccountButtonElement.tap()
    }
    
    func isNetsetIntroMessageVisible() -> Bool {
        return self.netsetIntroMessageElement.exists
    }
}
