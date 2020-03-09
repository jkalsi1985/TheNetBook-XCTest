//
//  StartupTheNetsetStepDefiner.swift
//  thenetbook
//
//  Created by Jagdeep Kalsi on 1/18/17.
//  Copyright © 2017 Net-a-Porter. All rights reserved.
//

import Foundation
import XCTest
import XCTest_Gherkin

class StartupTheNetsetStepDefiner: StepDefiner {
    
    
    let onboardingScreen = OnboardingScreen()
    let welcomeScreen = WelcomeScreen()
    let commonScreen = CommonScreen()
    let signInScreen = SignInScreen()
    let registerScreen = RegisterScreen()
    let tabBarScreen = TabBarScreen()
    let profileScreen = ProfileScreen()
    let SettingScreen = ProfileSettingsScreen()
    
    override func defineSteps() {
                
        step("I tap on sign in with your NAP account button") {
            self.welcomeScreen.tapOnSignInWithNAPButton()
            self.test.waitForExists(element: self.signInScreen.signInTitleElement, waitSeconds: 2)
        }
        
        step("I tap on register with new NAP account button") {
            self.welcomeScreen.tapOnRegisterWithNewAccountButton()
            self.test.waitForExists(element: self.registerScreen.registerTitleElement, waitSeconds: 2)
        }
        
        step("I go to the netset welcome screen") {
            self.commonScreen.dismissLocationPopUp()
            
            if self.onboardingScreen.skipButtonElement.exists {
                self.onboardingScreen.tapOnSkipButton()
            }
            
            if self.signInScreen.signInTitleElement.exists {
                self.commonScreen.tapOnBackButton()
                self.test.waitForExists(element: self.welcomeScreen.netsetIntroMessageElement, waitSeconds: 2)
            }
            
            if self.registerScreen.registerTitleElement.exists {
                self.commonScreen.tapOnBackButton()
                self.test.waitForExists(element: self.welcomeScreen.netsetIntroMessageElement, waitSeconds: 2)
            }
        }
        
        step("I return to netset welcome screen") {
            if self.tabBarScreen.profileTabButtonElement.exists {
                self.tabBarScreen.tapOnProfileButton()
                self.profileScreen.tapOnSettingsButton()
                self.SettingScreen.signOutOfTheApp()
                self.test.waitForExists(element: self.welcomeScreen.netsetIntroMessageElement, waitSeconds: 2)
            }
            
            if self.signInScreen.signInTitleElement.exists {
                self.commonScreen.tapOnBackButton()
                self.test.waitForExists(element: self.welcomeScreen.netsetIntroMessageElement, waitSeconds: 2)
            }
            
            if self.registerScreen.registerTitleElement.exists {
                self.commonScreen.tapOnBackButton()
                self.test.waitForExists(element: self.welcomeScreen.netsetIntroMessageElement, waitSeconds: 2)
            }
        }
    }
}
