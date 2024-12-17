import UIKit

var greeting = "Hello, playground"

//enumeration syntax
// keyword:- enum

enum someEnumeration {
    // enumeration definition
}

// simpale example
enum SocialMedia {
    case instragarm
    case facebook
    case twitter
}

var loginid = SocialMedia.facebook
loginid = .instragarm

// switch statement
loginid = .twitter
switch loginid {
case .facebook:
    print("This is facebook")
case .instragarm:
    print("This is instragram")
case .twitter:
    print("This is twitter")
}

//multiple case
enum Palnet: CaseIterable {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}
Palnet.allCases.count


let someplanet = Palnet.earth
switch someplanet {
case .earth:
    print("Mostly harmless")
default:
    print("Not a safe place for humans")
}

// iterating over enumeration cases
enum Beverage: CaseIterable {
    case coffee, tea, juice
}

let numberOfChoices = Beverage.allCases.count
print("\(numberOfChoices) beverage available")

// contains all cases
for beveage in Beverage.allCases {
    print(beveage)
}

// Associated values
enum barcode {
    case upc(Int, Int, Int, Int)
    case qrcode(String)
}

var productBARrcode = barcode.upc(8, 85909, 51226, 3)
productBARrcode = barcode.qrcode("Abcdefghiygh")


switch productBARrcode {
case .upc(let numbersyastem, let manfacture, let product, let check):
    print("UPC: \(numbersyastem)")
case .qrcode(let productcode):
    print("QRcode: \(productcode)")
}


// raw value

enum month: String {
    case march = "March"
    case april = "April"
    case may = "May"
}

var monthname = month.april.rawValue
month.march.rawValue
month.may.rawValue

// implicitly assigned values: int


enum Palnett: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}

var earthorder = Palnett.mars.rawValue
Palnett.saturn.rawValue

let possiblePlante = Palnett(rawValue: 7)

let possiblefind = 11
if let possiblee = Palnett(rawValue: possiblefind) {
    switch possiblee {
    case .earth:
        print("Mostly harmless")
    default:
        print("Not a safe place for humans")
    }
}else{
    print("There isnot a planet at posiiton \(possiblefind)")
}


// implicitly assigned values: string

enum Compasspoint: String {
    case north, south, east, west
}

var sunsetdirection = Compasspoint.east.rawValue
Compasspoint.west.rawValue

let possibleee = Compasspoint(rawValue: "east")
if let stringposible = Compasspoint(rawValue: possibleee?.rawValue ?? "east") {
    switch stringposible {
    case .east:
        print("east")
    default:
        print("another")
    }
}else{
    print("value")

}

// 
