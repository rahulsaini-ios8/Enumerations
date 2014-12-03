// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// An enumeration defines a common type for a group of related values and enables you to work with those values in a type-safe way within your code.

/*

If you are familiar with C, you will know that C enumerations assign related names to a set of integer values. Enumerations in Swift are much more flexible, and do not have to provide a value for each member of the enumeration. If a value (known as a “raw” value) is provided for each enumeration member, the value can be a string, a character, or a value of any integer or floating-point type.


*/

enum Points
{
    case North
    case South
    case East
    case West
}

// Unlike C and Objective-C, Swift enumeration members are not assigned a default integer value when they are created. In the Point example above, North, South, East and West do not implicitly equal 0, 1, 2 and 3. Instead, the different enumeration members are fully-fledged values in their own right, with an explicitly-defined type of Point.

// Multiple member values can appear on a single line, separated by commas:


var directionToHead = Points.West

directionToHead = .North

// Matching Enumeration Values with a Switch Statement


directionToHead = .South

switch directionToHead
{
case .North : println("North Swift")
case .East : println("East Swift")
case .South: println("South Swift")
case .West: println("West Swift")
    
}


enum Planet
{
    case Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus
}

let planets = Planet.Earth
switch planets
{
    case .Earth : println("Good")
    default : println("Nice")
}

// In Swift, an enumeration to define product barcodes of either type might look like this

enum Barcode
{
    case UPCA(Int, Int, Int, Int)
    case QRCode(String)
}

var productBarCode = Barcode.UPCA(9, 471464, 586345, 56)

productBarCode = .QRCode("BHVGDFKSBHFK")


switch productBarCode
{
    case .UPCA(let numberSystem, let manufacturer, let product, let check):
        println("UPC \(numberSystem), \(manufacturer), \(product), \(check)")
    case .QRCode(let productCode):
        println("QR Code : \(productCode)")
}

switch productBarCode
{
    case let .UPCA(numberSystem, manufacturer, product, check):
        println("UPC-A: \(numberSystem), \(manufacturer), \(product), \(check).")
    case let .QRCode(productCode):
        println("QR code: \(productCode).")
}

// Initializing from a Raw Value

enum Plantt: Int
{
    case Mercury = 1, Venus, Earth, Mars, Jupiter, Saturn, Uranus
}


let earthsOrder = Plantt.Mars.rawValue

let planetName = Plantt(rawValue: 6)

let positionToFind = 5

if let somePlant = Plantt(rawValue: positionToFind)
{
    switch somePlant
    {
        case .Earth: println("Safe for Humans")
        default: println("Not safe for humans")
    }
   
}
else
{
    println("\(positionToFind)")
}
