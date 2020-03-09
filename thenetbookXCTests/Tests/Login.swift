//
//  Login.swift
//  thenetbook
//
//  Created by Jagdeep Kalsi on 1/10/17.
//  Copyright © 2017 Net-a-Porter. All rights reserved.
//

import XCTest
import XCTest_Gherkin

class Login : XCTestCase {
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
        Given("I go to the netset welcome screen")
        And("I tap on sign in with your NAP account button")
    }
    
    func testSignInHappyFlow() {
        When("I enter valid login details")
        And("I click on sign in button")
        Then("Browse feed is displayed")
    }
    
    func testInvalidSignInCredentials() {
        Examples(
            ["emailAddressValue", "passwordValue"],
            ["jag_test@net.con", "testing1234"],
            ["jag_test@net.com", "abcdefg"]
        )
        
        Outline {
            When("I enter email address <emailAddressValue>")
            And("I enter the password value <passwordValue>")
            And("I click on sign in button")
            Then("Your email address or password was incorrect error message is displayed")
        }
    }
    
    override func tearDown() {
        super.tearDown()
        Given("I return to netset welcome screen")
    }
}
