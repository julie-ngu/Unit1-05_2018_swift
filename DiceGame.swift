// Created by: Julie Nguyen
// Created on: Sept 2018
// Created for: ICS4U
// This program generates a number between 1 and 6 and the user continues guessing until they guess the number.

import Foundation

print("This is a game that generates a random number between 1 and 6. \n\nGuess what number the computer generated: ")

let randNum = arc4random_uniform(6) + 1
var userTries = 0
    
    repeat {
        let userInput = readLine()
        
        if userInput == nil {
            print("-1 (error)")
        }
        else if let userGuess = Int(userInput!) {
            if userGuess == randNum {
                print("Congratulations, you guessed right! It took you \(userTries) try/tries.")
                exit(0)
            }
            else if userGuess > 6 || userGuess < 1 {
                print("Invalid. Please try again and pick a number from 1 to 6: ")
            } 
            else {
                userTries = userTries + 1
                print("Bzzt! Try again (you have tried \(userTries) time(s)): ")
            }
        }
        else {
            print("-1 (error)")
        }
    } while(true)
