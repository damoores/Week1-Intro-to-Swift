//: Playground - noun: a place where people can play

import UIKit

func toBase16(input: Int) -> String {
    let hex = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F"]
    var test = input
    var output = ""
    
    while test > 15 {
        output = hex[test % 16] + output
        test = test / 16
    }
    
    output = hex[test] + output
    
    return "0x\(output)"
}

4707 % 16
4707 / 16
294 % 16
294 / 16



toBase16(75327)
toBase16(15)
toBase16(160)
toBase16(256)


func romanToDecimel (input: String) -> Int {
    var count = 0
    var result = 0
    let convert: [ Character: Int] = ["I" : 1 , "V" : 5, "X" : 10, "L" : 50, "C" : 100, "D" : 500, "M" : 1000]
    
    while count < input.characters.count {
        if convert[input[input.startIndex.advancedBy(count)]] >= convert[input[input.startIndex.advancedBy(count + 1)]] {
            print ((convert[input[input.startIndex.advancedBy(count)]])!)
            if ( (count + 1) < input.characters.count) {count = count + 1} else {break}
        } else {
            result = result + (convert[input[input.startIndex.advancedBy(count + 1)]]! - convert[input[input.startIndex.advancedBy(count)]]!)
            if (count + 2 < input.characters.count ) { count = count + 2}
        }
    }
    return result
}
func romanToDecimal (input: String) -> Int
{
    var result : Int = 0
    let convert : [Character : Int] = ["I":1, "V":5, "X":10, "L":50, "C":100, "D":500, "M":1000 ]
    
    var index = 0
    func getValueAtIndex(index: Int) -> Int
    {
        let myout = input[input.startIndex.advancedBy(index)]
        return convert[myout]!
    }
    
    while index + 1 < input.characters.count && input.characters.count > 1
    {
        if getValueAtIndex(index) >= getValueAtIndex(index + 1){
            result += getValueAtIndex(index)
            index += 1
            if index + 1 == input.characters.count {
                return result + getValueAtIndex(index)
            }
            
        } else {
            result += getValueAtIndex(index + 1) - getValueAtIndex(index)
            if index + 2 == input.characters.count {
                return result
            }
            index += 2
            
        }
        
    }
    
    return result + getValueAtIndex(index)
}





var string1 = "radar"
var arrayString = string1.characters
var reverse = String([Character](string1.characters).reverse())




func returnPalindromes (input: [String]) -> [String] {
    return input.filter { String([Character]($0.characters).reverse()).uppercaseString == $0.uppercaseString}
}


let test = ["mOm", "mommy", "dad", "dada", "Seas", "raceCar", "Radar"]

returnPalindromes(test)
