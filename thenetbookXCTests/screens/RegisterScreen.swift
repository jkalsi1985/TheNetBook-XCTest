//
//  RegisterScreen.swift
//  thenetbook
//
//  Created by Jagdeep Kalsi on 2/2/17.
//  Copyright © 2017 Net-a-Porter. All rights reserved.
//

import Foundation
import XCTest
import XCTest_Gherkin

class RegisterScreen {
    
    let app = XCUIApplication()
    let emailAddressField = "Email address"
    let firstNameField = "First name"
    let surnameField = "Surname"
    let passwordField = "Password"
    let reEnterPasswordField = "Re-enter password"
    let registerButton = "Register"
    let registerMessage = "Register message"
    let registerErrorLabel = "Register error label"
    let registerUserLicenseAgreement = "User license agreement"
    let registerTitle = "REGISTER"

    var emailAddressFieldElement : XCUIElement {
        get {
            return XCUIApplication().searchFields[emailAddressField]
        }
    }
    
    var firstNameFieldElement : XCUIElement {
        get {
            return XCUIApplication().searchFields[firstNameField]
        }
    }
    
    var surnameFieldElement : XCUIElement {
        get {
            return XCUIApplication().searchFields[surnameField]
        }
    }
    
    var passwordFieldElement : XCUIElement {
        get {
            return XCUIApplication().secureTextFields[passwordField]
        }
    }
    
    var reEnterPasswordFieldElement : XCUIElement {
        get {
            return XCUIApplication().secureTextFields[reEnterPasswordField]
        }
    }
    
    var registerButtonElement : XCUIElement {
        get {
            return XCUIApplication().buttons[registerButton]
        }
    }
    
    var registerMessageElement : XCUIElement {
        get {
            return XCUIApplication().staticTexts[registerMessage]
        }
    }
    
    var registerErrorLabelElement : XCUIElement {
        get {
            return XCUIApplication().staticTexts[registerErrorLabel]
        }
    }
    
    var registerUserLicenseAgreementElement : XCUIElement {
        get {
            return XCUIApplication().staticTexts[registerUserLicenseAgreement]
        }
    }
    
    var registerTitleElement : XCUIElement {
        get {
            return XCUIApplication().staticTexts[registerTitle]
        }
    }
    
    func enterEmailAddressIntoField(registerEmail: String) {
        emailAddressFieldElement.tap()
        let emailAddressValue = emailAddressFieldElement.value as! String
        if emailAddressValue.characters.count == 0 {
            emailAddressFieldElement.typeText(registerEmail)
        }
        else {
            app.keys["delete"].press(forDuration: 2.0)
            emailAddressFieldElement.typeText(registerEmail)
        }
    }
    
    func enterFirstNameIntoField(registerFirstname: String) {
        firstNameFieldElement.tap()
        let firstNameValue = firstNameFieldElement.value as! String
        if firstNameValue.characters.count == 0 {
            firstNameFieldElement.typeText(registerFirstname)
        }
        else {
            app.keys["delete"].press(forDuration: 2.0)
            firstNameFieldElement.typeText(registerFirstname)
        }
    }
    
    func enterSurnameIntoField(registerSurname: String) {
        surnameFieldElement.tap()
        let surnameValue = surnameFieldElement.value as! String
        if surnameValue.characters.count == 0 {
            surnameFieldElement.typeText(registerSurname)
        }
        else {
            app.keys["delete"].press(forDuration: 2.0)
            surnameFieldElement.typeText(registerSurname)
        }
    }
    
    func enterPasswordIntoField(registerPasswordValue: String) {
        passwordFieldElement.tap()
        let register_passwordValue = passwordFieldElement.value as! String
        if register_passwordValue.characters.count == 0 {
            passwordFieldElement.typeText(registerPasswordValue)
        }
        else {
            app.keys["delete"].press(forDuration: 2.0)
            passwordFieldElement.typeText(registerPasswordValue)
        }
    }
    
    func enterReEnterPasswordIntoField(reEnterPasswordValue: String) {
        reEnterPasswordFieldElement.tap()
        let register_reEnterPasswordValue = reEnterPasswordFieldElement.value as! String
        if register_reEnterPasswordValue.characters.count == 0 {
            reEnterPasswordFieldElement.typeText(reEnterPasswordValue)
        }
        else {
            app.keys["delete"].press(forDuration: 2.0)
            reEnterPasswordFieldElement.typeText(reEnterPasswordValue)
        }
    }
    
    func tapOnRegisterButton() {
        registerButtonElement.tap()
    }
    
    func isRegisterTitleVisible() -> Bool {
        return self.registerTitleElement.exists
    }
    
    func isRegisterErrorLabelVisible() -> Bool {
        return self.registerErrorLabelElement.exists
    }
}
