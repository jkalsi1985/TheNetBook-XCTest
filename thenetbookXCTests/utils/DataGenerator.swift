//
//  DataGenerator.swift
//  thenetbook
//
//  Created by Jagdeep Kalsi on 2/2/17.
//  Copyright © 2017 Net-a-Porter. All rights reserved.
//

import Foundation

class DataGenerator {
    
    static func generateRandomString() -> String {
        let allowedChars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        let allowedCharsCount = UInt32(allowedChars.characters.count)
        var randomString = ""
        
        for _ in (0..<10) {
            let randomNum = Int(arc4random_uniform(allowedCharsCount))
            let newCharacter = allowedChars.index(allowedChars.startIndex, offsetBy: Int(randomNum))
            let nextChar = allowedChars[newCharacter]
            randomString += String(nextChar)
        }
        return randomString
    }
    
    static func generateRandomEmailAddress() -> String {
        let randomString = self.generateRandomString()
        
        let email = "test_\(randomString)@net.com"
        return email
    }
    
    static func generateRandomFirstName() -> String {
        let randomString = self.generateRandomString()
        
        let firstname = "firstname\(randomString)"
        return firstname
    }
    
    static func generateRandomSurname() -> String {
        let randomString = self.generateRandomString()
        
        let surname = "surname\(randomString)"
        return surname
    }
    
    static func generateComments() -> String {
        let randomString = self.generateRandomString()
        
        let comments = "comment\(randomString)"
        return comments
    }
}
