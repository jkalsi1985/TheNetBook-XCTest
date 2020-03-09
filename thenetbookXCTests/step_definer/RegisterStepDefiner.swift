
//
//  RegisterStepDefiner.swift
//  thenetbook
//
//  Created by Jagdeep Kalsi on 2/2/17.
//  Copyright © 2017 Net-a-Porter. All rights reserved.
//

import Foundation
import XCTest
import XCTest_Gherkin

class RegisterStepDefiner: StepDefiner {
    
    let registerScreen = RegisterScreen()
    
    override func defineSteps() {
        step("I enter valid registration details") {
            let email = DataGenerator.generateRandomEmailAddress()
            let firstname = DataGenerator.generateRandomFirstName()
            let surname = DataGenerator.generateRandomSurname()
            
            self.registerScreen.enterEmailAddressIntoField(registerEmail: email)
            self.registerScreen.enterFirstNameIntoField(registerFirstname: firstname)
            self.registerScreen.enterSurnameIntoField(registerSurname: surname)
            self.registerScreen.enterPasswordIntoField(registerPasswordValue: "testing")
            self.registerScreen.enterReEnterPasswordIntoField(reEnterPasswordValue: "testing")
        }
        
        step("I enter email address ([^ ]*) into the field") { (matches:[String]) in
            let emailAddress = matches[0]
            self.registerScreen.enterEmailAddressIntoField(registerEmail: emailAddress)
        }
        
        step("Enter firstname ([^ ]*) into the field") { (matches:[String]) in
            let firstname = matches[0]
            self.registerScreen.enterFirstNameIntoField(registerFirstname: firstname)
        }
        
        step("Enter surname ([^ ]*) into the field") { (matches:[String]) in
            let surname = matches[0]
            self.registerScreen.enterSurnameIntoField(registerSurname: surname)
        }
        
        step("Enter password ([^ ]*) into the field") { (matches:[String]) in
            let password = matches[0]
            self.registerScreen.enterPasswordIntoField(registerPasswordValue: password)
        }
        
        step("Enter re enter password ([^ ]*) into the field") { (matches:[String]) in
            let reEnterPassword = matches[0]
            self.registerScreen.enterReEnterPasswordIntoField(reEnterPasswordValue: reEnterPassword)
        }
        
        step("Error message is displayed ([^+]*)") { (matches:[String]) in
            let registerErrorMessage = matches[0]
            XCTAssert(self.registerScreen.registerErrorLabelElement.exists, registerErrorMessage)
        }
        
        step("I click on register button") {
            self.registerScreen.tapOnRegisterButton()
            sleep(5)
        }
    }
}
