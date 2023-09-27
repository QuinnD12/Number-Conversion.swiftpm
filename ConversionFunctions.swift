//
//  ConversionFunctions.swift
//  Number Conversion
//
//  Created by Quinn B. Davis on 9/22/23.
//

import Foundation

//Hex

func hexFormat(_ digit: String) -> String {
    switch digit {
        case "10":
            return "A"
        case "11":
            return "B"
        case "12":
            return "C"
        case "13":
            return "D"
        case "14":
            return "E"
        case "15":
            return "F"
        default:
            return digit
    }
}

func decimalToHex(_ dec: Int) -> String {
    var hex = ""
    let dec = abs(dec)
    
    if dec != 0 {
        hex = decimalToHex(Int(floor(Double(dec / 16)))) + hexFormat(String(Int(dec % 16)))
    }
    
    return hex
}

func decFormat(_ digit: Character) -> String {
    switch digit {
        case "A":
            return "10"
        case "B":
            return "11"
        case "C":
            return "12"
        case "D":
            return "13"
        case "E":
            return "14"
        case "F":
            return "15"
        default:
            return String(digit)
    }
}

func hexToDecimal(_ hex: String) -> Int {
    var dec = 0
    
    for i in 0..<hex.count {
        let hexDigit = Int(decFormat(hex[hex.index(hex.startIndex, offsetBy: i)]))!
        dec += hexDigit * Int(pow(Double(16), Double(hex.count-i-1)))
    }
    
    return dec
}


//Binary
func binToDecimal(_ bin: String) -> Int {
    var dec = 0
    
    for i in 0..<bin.count {
        let binDigit = Int(String(bin[bin.index(bin.startIndex, offsetBy: i)]))!
        dec += binDigit * Int(pow(Double(2), Double(bin.count-i-1)))
    }
    
    return dec
}

func decToBin(_ dec: Int) -> String {
    
    var decimalValue = dec
    var binaryNumber = ""
    while(decimalValue > 0) {
        if ((decimalValue & 1) == 1){
            binaryNumber += "1"
        }
        else {
            binaryNumber += "0"
        }
        
        decimalValue >>= 1
    }
    
    return String(binaryNumber.reversed())
    
}
