//
//  OnboardingScreen.swift
//  thenetbook
//
//  Created by Jagdeep Kalsi on 1/12/17.
//  Copyright © 2017 Net-a-Porter. All rights reserved.
//

import Foundation
import XCTest
import XCTest_Gherkin

class OnboardingScreen {
    
    let app = XCUIApplication()
    let skipButton = "Skip button"
    let shareAndShopMessage = "Share and shop with the world’s most stylish women"
    let whatOtherPeopleLovingMessage = "See what other people are loving"
    let shopEverythingMessage = "Shop everything you see"
    let joinStyleTribeMessage = "Join style tribe to discover like minded people"
    
    
    var skipButtonElement : XCUIElement {
        get {
            return XCUIApplication().buttons[skipButton]
        }
    }
    
    var shareAndShopMessageElement : XCUIElement {
        get {
            return XCUIApplication().staticTexts[shareAndShopMessage]
        }
    }
    
    var whatOtherPeopleLovingMessageElement : XCUIElement {
        get {
            return XCUIApplication().staticTexts[whatOtherPeopleLovingMessage]
        }
    }
    
    var shopEverythingMessageElement : XCUIElement {
        get {
            return XCUIApplication().staticTexts[shopEverythingMessage]
        }
    }
    
    var joinStyleTribeElement : XCUIElement {
        get {
            return XCUIApplication().staticTexts[joinStyleTribeMessage]
        }
    }
    
    func tapOnSkipButton() {
        skipButtonElement.tap()        
    }
}

