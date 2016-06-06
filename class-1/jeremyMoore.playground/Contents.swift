//: Playground - noun: a place where people can play

import UIKit

//Write a function that takes in a string, checks if it can be converted to a number and if possible, returns a number

func toNumber(string: String) -> Int?
{
    return Int(string)
}

toNumber("five")
toNumber("42")


//Write a function that takes in a tuple (code, message) and returns a string by using interpolation

func statusCode(code: String, message: String) -> String{
    return ("Status code \(code): \(message)")
}

statusCode("200", message: "All OK")
statusCode("404", message: "Page not found")

//Write a function that take in a string, and returns a message: “String contains n characters”

func charCount (string: String) -> String
{
    return "String contains \(string.characters.count) characters"
}

charCount("three plus fifteen")

func literalInterpratationOfAssignmentDadJoke<T>(input: T) ->String
{
    return "String contains n characters"
}

literalInterpratationOfAssignmentDadJoke(6555)
literalInterpratationOfAssignmentDadJoke("I got Dad jokes for days")


//Write a function that takes in a string and reverses it. Use a simple for loop
func reverseString(word: String) -> String
{
    var newWord = ""
    for character in word.characters {
    newWord = String(character) + newWord
    }
    return newWord
}

reverseString("cowpie")
reverseString("racecar")
reverseString("radar")

//Bonus:
//Declare a variable that’s function. Implement function to take in a string (name) and return greeting message.

func sayHello(name: String) -> String
{
    return "Hi there \(name). How's it going?"
}
var greeting = sayHello
greeting("jeff")

