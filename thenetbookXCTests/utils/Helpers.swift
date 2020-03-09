//
//  Helpers.swift
//  thenetbook
//
//  Created by Jagdeep Kalsi on 1/27/17.
//  Copyright © 2017 Net-a-Porter. All rights reserved.
//

import Foundation
import XCTest
import XCTest_Gherkin

extension XCTestCase {
    
    // wait for an element to exist and be hittable ( visible on the screen)
    func waitForHittable(element: XCUIElement, waitSeconds: Double, file: String = #file, line: UInt = #line) {
        let existsPredicate = NSPredicate(format: "hittable == true")
        self.expectation(for: existsPredicate, evaluatedWith: element, handler: nil)
        
        self.waitForExpectations(timeout:waitSeconds) { (error) -> Void in
            if (error != nil) {
                let message = "Failed to find \(element) after \(waitSeconds) seconds."
                self.recordFailure(withDescription: message,
                                   inFile: file, atLine: line,  expected: true)
            }
        }
    }
    
    // wait for an element to exist but not be hittable
    func waitForNotHittable(element: XCUIElement, waitSeconds: Double, file: String = #file, line: UInt = #line) {
        let existsPredicate = NSPredicate(format: "hittable == false")
        self.expectation(for: existsPredicate, evaluatedWith: element, handler: nil)
        
        self.waitForExpectations(timeout:waitSeconds) { (error) -> Void in
            if (error != nil) {
                
                let message = "Failed to find \(element) after \(waitSeconds) seconds."
                self.recordFailure(withDescription: message,
                                   inFile: file, atLine: line,  expected: true)
            }
        }
    }
    
    //Wait for an element to exist, may or maynot be visible in the screen
    func waitForExists(element: XCUIElement, waitSeconds: Double, file: String = #file, line: UInt = #line) {
        let existsPredicate = NSPredicate(format: "exists == true")
        self.expectation(for: existsPredicate, evaluatedWith: element, handler: nil)
        
        self.waitForExpectations(timeout:waitSeconds) { (error) -> Void in
            if (error != nil) {
                let message = "Failed to find \(element) after \(waitSeconds) seconds."
                self.recordFailure(withDescription:message,
                                   inFile: file, atLine: line,  expected: true)
            }
        }
    }
    
    //Wait for an element not to exist, may or maynot be visible in the screen
    func waitForNotExists(element: XCUIElement, waitSeconds: Double, file: String = #file, line: UInt = #line) {
        let existsPredicate = NSPredicate(format: "exists == false")
        self.expectation(for: existsPredicate, evaluatedWith: element, handler: nil)
        
        self.waitForExpectations(timeout:waitSeconds) { (error) -> Void in
            if (error != nil) {
                let message = "Failed to find \(element) after \(waitSeconds) seconds."
                self.recordFailure(withDescription:message,
                                   inFile: file, atLine: line,  expected: true)
            }
        }
    }
}

extension XCUIElement{
    
    
    //From AutoMate source: https://github.com/PGSSoft/AutoMate
    // MARK: Methods
    /**
     Perform swipe gesture on this view by swiping between provided points.
     
     - parameter startVector: Relative point from which to start swipe.
     - parameter stopVector: Relative point to end swipe.
     */
    func swipe(from startVector: CGVector, to stopVector: CGVector) {
        let p1 = coordinate(withNormalizedOffset: startVector)
        let p2 = coordinate(withNormalizedOffset: stopVector)
        p1.press(forDuration: 0.1, thenDragTo: p2)
    }
}
