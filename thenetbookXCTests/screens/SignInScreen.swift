//
//  SignInScreen.swift
//  thenetbook
//
//  Created by Jagdeep Kalsi on 1/10/17.
//  Copyright © 2017 Net-a-Porter. All rights reserved.
//

import Foundation
import XCTest
import XCTest_Gherkin

class SignInScreen {
    
    let app = XCUIApplication()
    let signInEmailAddressField = "Email address"
    let signInPasswordField = "Password"
    let signInButton = "Sign in"
    let signInErrorMessage = "Sign in error message"
    let signInTitle = "SIGN IN"
    
  
    var signInTitleElement : XCUIElement {
        get {
            return  XCUIApplication().staticTexts[signInTitle]
        }
    }
    
    var signInEmailAddressFieldElement : XCUIElement {
        get {
            return XCUIApplication().searchFields[signInEmailAddressField]
        }
    }
    
    var signInPasswordFieldElement : XCUIElement {
        get {
            return XCUIApplication().secureTextFields[signInPasswordField]
        }
    }
    
    var signInButtonElement : XCUIElement {
        get {
            return XCUIApplication().buttons[signInButton]
        }
    }
    
    var signInErrorMessageElement : XCUIElement {
        get {
            return XCUIApplication().staticTexts[signInErrorMessage]
        }
    }

    func tapOnSignInButton() {
        signInButtonElement.tap()
    }
    
    func enterEmailAddress(email: String) {
        signInEmailAddressFieldElement.tap()
        let emailAddressValue = signInEmailAddressFieldElement.value as! String
        if emailAddressValue.characters.count == 0 {
            signInEmailAddressFieldElement.typeText(email)
        }
        else {
            app.keys["delete"].press(forDuration: 2.0)
            signInEmailAddressFieldElement.typeText(email)
            
        }
    }
    
    func enterPassword(passwordValue: String) {
        signInPasswordFieldElement.tap()
        signInPasswordFieldElement.typeText(passwordValue)
    }
    
    func isSignInErrorMessageVisible() -> Bool {
        return self.signInErrorMessageElement.exists
    }
    
    func isSignInTitleVisble() -> Bool {
        return self.signInTitleElement.exists
    }
}
