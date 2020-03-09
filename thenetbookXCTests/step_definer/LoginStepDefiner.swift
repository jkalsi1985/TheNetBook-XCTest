//
//  LoginStepDefiner.swift
//  thenetbook
//
//  Created by Jagdeep Kalsi on 1/10/17.
//  Copyright © 2017 Net-a-Porter. All rights reserved.
//

import Foundation
import XCTest
import XCTest_Gherkin

class LoginStepDefiner: StepDefiner {
    
    let app = XCUIApplication()
    let loginScreen = SignInScreen()
    let tabBarScreen = TabBarScreen()
    let commonScreen = CommonScreen()


    override func defineSteps() {        
        step("I enter valid login details") {
            self.loginScreen.enterEmailAddress(email: "jag_test@net.com")
            self.loginScreen.enterPassword(passwordValue: "testing1234")
        }
        
        step("I click on sign in button") {
            self.loginScreen.tapOnSignInButton()
            sleep(2)
        }
        
        step("Browse feed is displayed") {
            self.commonScreen.dismissNotificationPopUp()
            XCTAssertTrue(self.tabBarScreen.isFeedButtonVisible())
        }
        
        step("I enter email address ([^ ]*)") { (matches:[String]) in
            let emailAddressValue = matches[0]
            self.loginScreen.enterEmailAddress(email: emailAddressValue)
        }
        
        step("I enter the password value ([^ ]*)") { (matches:[String]) in
            let passwordValue = matches[0]
            self.loginScreen.enterPassword(passwordValue: passwordValue)
        }
        
        step("Your email address or password was incorrect error message is displayed") {
            XCTAssert(self.loginScreen.signInErrorMessageElement.exists, "Your email address or password was incorrect")
        }
    }
}
