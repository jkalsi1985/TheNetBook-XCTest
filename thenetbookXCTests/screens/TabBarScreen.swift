//
//  TabBarScreen.swift
//  thenetbook
//
//  Created by Jagdeep Kalsi on 1/18/17.
//  Copyright © 2017 Net-a-Porter. All rights reserved.
//

import Foundation
import XCTest
import XCTest_Gherkin

class TabBarScreen {
    
    let feedTabButton = "feed"
    let exploreTabButton = "explore"
    let uploadTabButton = "upload"
    let alertsTabButton = "alerts"
    let profileTabButton = "profile"
    
    var feedTabButtonElement : XCUIElement {
        get {
            return XCUIApplication().buttons[feedTabButton]
        }
    }
    
    var exploreTabButtonElement : XCUIElement {
        get {
            return XCUIApplication().buttons[exploreTabButton]
        }
    }
    
    var uploadTabButtonElement : XCUIElement {
        get {
            return XCUIApplication().buttons[uploadTabButton]
        }
    }
    
    var alertsTabButtonElement : XCUIElement {
        get {
            return XCUIApplication().buttons[alertsTabButton]
        }
    }
    
    var profileTabButtonElement : XCUIElement {
        get {
            return XCUIApplication().buttons[profileTabButton]
        }
    }
    
    func tapOnFeedButton() {
        feedTabButtonElement.tap()
        sleep(3)
    }
    
    func tapOnExploreButton() {
        exploreTabButtonElement.tap()
        sleep(3)
    }
    
    func tapOnAlertsButton() {
        alertsTabButtonElement.tap()
        sleep(3)
    }
    
    func tapOnProfileButton() {
        profileTabButtonElement.tap()
        sleep(3)
    }
    
    func isProfileButtonVisible() -> Bool {
        let profileButtonDisplayed = self.profileTabButtonElement.exists
        return profileButtonDisplayed
    }
    
    func isFeedButtonVisible() -> Bool {
        let feedButtonDisplayed = self.feedTabButtonElement.exists
        return feedButtonDisplayed
    }
}
