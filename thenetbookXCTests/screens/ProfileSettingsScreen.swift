//
//  ProfileSettingsScreen.swift
//  thenetbook
//
//  Created by Jagdeep Kalsi on 1/19/17.
//  Copyright © 2017 Net-a-Porter. All rights reserved.
//

import Foundation
import XCTest
import XCTest_Gherkin

class ProfileSettingsScreen {
    
    let app = XCUIApplication()
    let inviteFriendsTitle = "INVITE FRIENDS"
    let changeCountryTitle = "COUNTRY SELECTION"
    let manageAlertsTitle = "MANAGE ALERTS"
    let hiddenUsersTitle = "HIDDEN USERS"
    let feedbackTitle = "FEEDBACK"
    let helpTitle = "HELP"
    let myOrdersTitle = "MY ORDERS"
    let creditsTitle = "CREDITS"
    let resetTooltipsTitle = "RESET TOOLTIPS"
    let signOutTitle = "SIGN OUT"
    
    var inviteFriendsTitleElement : XCUIElement {
        get {
            return XCUIApplication().staticTexts[inviteFriendsTitle]
        }
    }
    
    var changeCountryTitleElement : XCUIElement {
        get {
            return XCUIApplication().staticTexts[changeCountryTitle]
        }
    }
    
    var manageAlertsTitleElement : XCUIElement {
        get {
            return XCUIApplication().staticTexts[manageAlertsTitle]
        }
    }
    
    var hiddenUsersTitleElement : XCUIElement {
        get {
            return XCUIApplication().staticTexts[hiddenUsersTitle]
        }
    }
    
    var feedbackTitleElement : XCUIElement {
        get {
            return XCUIApplication().staticTexts[feedbackTitle]
        }
    }
    
    var helpTitleElement : XCUIElement {
        get {
            return XCUIApplication().staticTexts[helpTitle]
        }
    }
    
    var myOrdersTitleElement : XCUIElement {
        get {
            return XCUIApplication().staticTexts[myOrdersTitle]
        }
    }
    
    var creditsTitleElement : XCUIElement {
        get {
            return XCUIApplication().staticTexts[creditsTitle]
        }
    }
    
    var resetTooltipsTitleElement : XCUIElement {
        get {
            return XCUIApplication().staticTexts[resetTooltipsTitle]
        }
    }
    
    var signOutTitleElement : XCUIElement {
        get {
            return XCUIApplication().staticTexts[signOutTitle]
        }
    }
    
    func tapOnOKOnSignOutPopUp() {
        app.alerts["Sign Out"].buttons["OK"].tap()
    }
    
    func signOutOfTheApp() {
        signOutTitleElement.tap()
        tapOnOKOnSignOutPopUp()
    }
}
