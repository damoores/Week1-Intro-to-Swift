//: Playground - noun: a place where people can play

import UIKit

//Write a function that takes in an array of strings, checks if array contains “Earth”, if not, adds it otherwise returns

var planets = ["this", "that", "the other"]

func thirdRock (inout input: Array<String>) {
    if input.indexOf("Earth") > -1 {
        return
    } else {
        input.append("Earth")
    }
}
thirdRock(&planets)


var planets1 = ["this", "that", "the other"]

func earthFirst (inout input: Array<String>) {
    let results = input.filter { (planet) -> Bool in
        return planet == "Earth"
    }
    if results.count == 0 {
        input.insert("Earth", atIndex: 0)
    } else {
        return
    }
}

earthFirst(&planets1)


//Use reduce to create single string from the above array. [“Venus”, “Earth”] would produce “Venus, Earth”

var singleString = planets.reduce(" ") { text, planet in "\(text) \(planet)," }
var fixedSingleString = String(singleString.characters.dropLast())

fixedSingleString


//Declare and implement a dictionary that can contain as values Strings, Ints, etc


let aDictionary = [ 1 : "one", 2 : "two", 3 : "three", 4 : "testing...testing"]

//or, to follow the instructions, but not recommended in documnetation:

let bDictionary = [1 : 1, 2 : "too", 3 : [1,2,3] ]


//Declare a dictionary of string values. Declare a function that takes in a string and searches dictionary for it. Use filter

let seussical = [ 1 : "fish", 2 : "fish", 3 : "cat", 4 : "hat", 5 : "docter"]

func wheresWaldo (string: String) -> [(Int, String)] {
    let results = seussical.filter { (key, value) -> Bool in
        return value == string
    }
    return results
}
wheresWaldo("fish")

wheresWaldo("foo")


//Write examples for union, intersect, subtract, exclusive Or set operations
// Sets retireved and adapted from:   http://array-ipsum.com/index.html

var northeast: Set = [
    "Connecticut", "Maine", "Massachusetts", "New Hampshire", "New Jersey",
    "New York", "Pennsylvania", "Rhode Island", "Vermont"
]
var midwest: Set = [
    "Illinois", "Indiana", "Iowa", "Kansas", "Michigan", "Minnesota",
    "Missouri", "Nebraska", "North Dakota", "Ohio", "South Dakota",
    "Wisconsin"
]
var south: Set = [
    "Alabama", "Arkansas", "Delaware", "Florida", "Georgia", "Kentucky",
    "Louisiana", "Maryland", "Mississippi", "North Carolina", "Oklahoma",
    "South Carolina", "Tennessee", "Texas", "Virginia", "West Virginia"
]
var states: Set = [
    "Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado",
    "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho",
    "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine",
    "Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi",
    "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey",
    "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio",
    "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina",
    "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia",
    "Washington", "West Virginia", "Wisconsin", "Wyoming"
]

northeast.union(midwest).count
northeast.count
midwest.count

states.intersect(south).count
states.count
south.count

states.subtract(midwest).count
midwest.subtract(states).count

states.exclusiveOr(south).count
south.exclusiveOr(states).count
states.exclusiveOr(midwest).count


//Write a function that counts repeating words and prints out the count of each

//could not figure this one out




//Add two numbers without using “+”


var numberOne = 8
var numberTwo = 11

for i in 0 ..< numberOne {
    numberTwo+=1
}
numberTwo




