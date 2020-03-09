//
//  Register.swift
//  thenetbook
//
//  Created by Jagdeep Kalsi on 2/2/17.
//  Copyright © 2017 Net-a-Porter. All rights reserved.
//

import XCTest
import XCTest_Gherkin

class Register : XCTestCase {
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
        Given("I go to the netset welcome screen")
        And("I tap on register with new NAP account button")
    }
    
    func testRegisterWithNewAccountSuccessfully() {
        When("I enter valid registration details")
        And("I click on register button")
        Then("Browse feed is displayed")
    }
    
    func testOutlineInvalidRegisterDetails() {
        Examples(
            ["emailAddress", "firstnameValue", "surnameValue", "passwordValue", "reEnterPasswordValue", "registerErrorMessage"],
            ["jag_test@net.com", "Jag", "Testing", "testing1234", "testing1234", "This email address is already registered."],
            ["zxc@net.com", "Automation", "Testing", "test", "test", "Password must be at least 6 characters"],
            ["zxc@net.con", "Automation", "Test", "Testing", "Testing", "There was a problem with registration. Please check your details and try again."]
            )
            
            Outline {
                When("I enter email address <emailAddress> into the field")
                And("Enter firstname <firstnameValue> into the field")
                And("Enter surname <surnameValue> into the field")
                And("Enter password <passwordValue> into the field")
                And("Enter re enter password <reEnterPasswordValue> into the field")
                When("I click on register button")
                Then("Error message is displayed <errorMessage>")
            }
    }
    
    override func tearDown() {
        super.tearDown()
        Given("I return to netset welcome screen")
    }
}
