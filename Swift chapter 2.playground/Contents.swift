import UIKit

var greeting = "Hello, playground"


/* Type conversion
 Mixed type operation
type interfence
Srting,character
string combination
string interpolation
 Multi line string
unicode
 A variatey of number
 floating number
 different integer number
 type aliase
 tuples*/

// Type coversion

let decimal: Double = 3.7
var integer: Int = Int(decimal)  //type casting
integer = Int(Double(integer))
let integerr: Double = Double(integer)

let intvalue: Int = 42
let doubLee: Double = Double(intvalue)
print(doubLee)


// Mixed type operation

let hoursrate: Double = 3.5
let hourswork: Int = 5
let totall: Int = Int(hoursrate) * hourswork
let total: Double = hoursrate * Double(hourswork)

let result: Int = 7 / 2
let reu = Double(7) / Double(2)

let intvaluee: Int = 42
let doublee: Double = 45.7
let valuedd: Double = Double(intvaluee) + doublee
print(valuedd)

// type interfence
let varibleiNt = 4 // type interfence the ttpe as int
let valuedouble = 6.5

let decimalnumber: Double = 3
// let decimalnum = 3 as Double

let mesageee = "Hello, welcome"  // type interfence:- string


//String & character
/* string: store squaence of character
 charcter: single character*/

let characterA: Character = "a"
let chracterAA = "a"

let stringA: String = "Pilu"
let stringAA = "pilu"

let charrtee: Character = "!"
print(charrtee)

let stringgg: String = "Priyanka"
print(stringgg)


//Concatenation : combine string

var srtingg = "Hello, Priyanka "
let messageee = "Joshi"
srtingg += messageee

let stringnamE = "Hello, Priyanka"
let stin = "Joshi"
let stringg1 = stringnamE + stin
print(stringg1)

//Charcter converted into string

let excitement = "!"
srtingg += String(excitement)

let stringgG = "Pilu"
let exc = "!"
let ecss = stringgG + String(exc)
print(ecss)


// Interpolation
let message = "Joshi Priyanka"
print("My name is \(message)")

let decimall = 1.0 / 3.0
print("One third is \(decimall) as a decimal")

let nameE = "Priynak"
let neee = "My name is \(nameE)"
print(neee)

//Multiline string

let multilinestring = """
This is multiline sting
one two

"""

var linee = """
three five
six

"""

let lineee = linee +  multilinestring
print(lineee)

//Unicode: a-97 start, cafe:- c: 99, a: 97, f: 102, e: 101

let unicodeChar: Character = "\u{1F600}" // Grinning Face emoji


// A variaty number

let intvalE: Int = 42
let floatvalue: Float = 3.14
let doublevalue: Double = 3.145667777  //highe percision

//Int
/* signed integer:- Int, Int8, int16, int32, int64: either positive or negative
unsingned integr:- uint, uint8, uint16, uint32, uint64: non negative number(positive number)
64 bit - modern hrdware, 32 bit - old hardware  */


//combien integer type

let a: UInt8 = 32
let b: Int32 = 34
let c: UInt16 = 30
let d: Int8 = 12
let summm = Int(a) + Int(b) + Int(c) + Int(d)

//Floating point number

/*Float:- 32 bit, less precision
Double:- 64 bit, higher precision and important accurcy*/

let valueee: Int = 43
let numbb: Float = 3.23
let valuFlo: Float = Float(valueee) / numbb
print(valuFlo)

//Type aliaces

typealias Animals = String
let mypet: Animals = "Dogs"

typealias corredinates = (Int, Int)
let xy: corredinates = (2, 3)

typealias diatances = Double
let surat: diatances = 42.7
print(surat)

// Tuples

// deine data type

let corrdinat: (Int, Int) = (2, 3)

let pesons: (age: Int, naME: String, height: Int) = (23, "priyanka", 157)
print("Age: \(pesons.age), Name: \(pesons.naME), HEIght: \(pesons.height)")

// define type annotation

let corrdi = (2, 3)

//nested tuple

let point: ((Int,Int), String) = ((3, 2), "point A")
print("Pomt: \(point.0), cordd: \(point.1)")

// combien different data type

let combineee = (2.13, 5)
let pesonAge = (name: "Pilu", age: 23, height: 157)

// Acessing tuple value

let poin = (3, 6.7)
let x9 = poin.0
let y9 = poin.1
print("X: \(x9), y: \(y9)")

let x = combineee.0
let y = combineee.1

let cordinnn = (x: 2, y: 6.4)
let x1 = cordinnn.x
let y1 = cordinnn.y

let corddinte3D = (x: 3, y: 5.4, z: 3)
let x3 = corddinte3D.x
let y3 = corddinte3D.y
let z3 = corddinte3D.z

//ingored tuple value

let corddd = (x: 3, y: 5, z: 6)
let (x7, y7, _) = corddd
print("x: \(x7), y: \(y7)")

let (x4, y4, _) = corddinte3D

// Used name in tuple

let authorName = (bookname: "SWift programming", author: "Richagde", year: 2014)
print("Book name: \(authorName.bookname), Author name: \(authorName.author), Year: \(authorName.year)")

// mini excerices
/* Mini-exercises
 1. Create a constant called age1 and set it equal to 42. Create a constant called age2 and set it equal to 21. Check using Option-click that the type for both has been inferred correctly as Int.*/

let age1 = 42
let age2 = 21
//Yes, both intereed integer type

 /*2. Create a constant called avg1 and set it equal to the average of age1 and age2 using the naïve operation (age1 + age2) / 2. Use Option-click to check the type and check the result of avg1. Why is it wrong?*/

let avg1 = (age1 + age2) / 2
print(avg1)         // Missing perciison or frecational part


 /*3. Correct the mistake in the above exercise by converting age1 and age2 to type Double in the formula. Use Option-click to check the type and check the result of avg1. Why is it now correct?*/

let avg11 = Double(age1 + age2) / 2   // converted int into float
print(avg11)

// String

/* Mini-exercises
 1. Create a string constant called firstName and initialize it to your first name. Also, create a string constant called lastName and initialize it to your last name.*/

let firstNmae = "Priyanka "
let lastName = "JOSHI"

 /*2. Create a string constant called fullName by adding the firstName and lastName constants together, separated by a space.*/

let fullName = firstNmae + lastName
print(fullName)

 /*3. Using interpolation, create a string constant called myDetails that uses the fullName constant to create a string introducing yourself. For example, my string would read: "Hello, my name is Matt Galloway.".*/

let myDetails = "Hello, my name is \(fullName)"
print(myDetails)

// Tuples

/* Mini-exercises
 1. Declare a constant tuple that contains three Int values followed by a Double. Use this to represent a date (month, day, year) followed by an average temperature for that date*/

let date: (month: Int, day: Int, year: Int, averagetempetaure: Double) = (4, 14, 2004, 34.78)

/* Change the tuple to name the constituent components. Give them names related to the data they contain: month, day, year and averageTemperature.*/

let month1 = date.month
let day1 = date.day
let year1 = date.year
let temperture = date.averagetempetaure


/*3. In one line, read the day and average temperature values into two constants. You’ll need to employ the underscore to ignore the month and year.*/

let (_, day4, _, averagettempetue4) = date
print("Day: \(day4), temperture: \(averagettempetue4)")

/*4. Up until now, you’ve only seen constant tuples. But you can create variable tuples, too. Change the tuple you created in the exercises above to a variable by using var instead of let. Now change the average temperature to a new value.*/

var datee: (month: Int, day: Int, year: Int, averagetempetaure: Double) = (4, 14, 2004, 34.78)
datee.averagetempetaure = 45.78
print("Temp: \(datee)")

/* Challenge 1: Coordinates
 Create a constant called coordinates and assign a tuple containing two and three to it.*/

let corrdinates = (2, 3)
print(corrdinates)


 /*Challenge 2: Named coordinate
 Create a constant called namedCoordinate with a row and column component.*/

let namedCorrdinate = ((2, 3),
                       (4, 5))
let row = namedCorrdinate.0
let column = namedCorrdinate.1
print("Row \(row), column: \(column)")

/* Challenge 3: Which are valid?
 Which of the following are valid statements?
 let character: Character = "Dog"
 let character: Character = "!"
 let string: String = "Dog"
 let stringr: String = "!"*/

//above 2,3,4 are valid statements

let character: Character = "!"
let string: String = "Dog"
let stringr: String = "!"

 /*Challenge 4. Does it compile?
 let tuple = (day: 15, month: 8, year: 2015)
 let day = tuple.Day*/

let tuple = (day: 15, month: 8, year: 2015)
let day = tuple.day

/* Challenge 5: Find the error
 What is wrong with the following code?
 let name = "Matt"
 name += " Galloway*/

// Here use let for constant and var for variable

var name = "Matt"
name += " Galloway"
print(name)

 /*Challenge 6: What is the type of value?
 What is the type of the constant named value?
  let tuplee = (100, 1.5, 10)
  let value = tuplee.1*/

let tuplee = (100, 1.5, 10)  // (Int, double, int)
let value = tuplee.1     //double value

 /*Challenge 7: What is the value of month?
 What is the value of the constant named month?
  let tuplE = (day: 15, month: 8, year: 2015)
  let month = tuplE.month*/

let tuplE = (day: 15, month: 8, year: 2015)  // (int, int, int)
let month = tuplE.month  // int type

 /*Challenge 8: What is the value of summary?
 What is the value of the constant named summary?
  let number = 10
  let multiplier = 5
  let summary = "\(number) multiplied by \(multiplier) equals \
  (number * multiplier)*/


let number = 10
let multiplier = 5
let summary = "\(number) multiplied by \(multiplier) equals \(number * multiplier)"   //String type
print(summary)

 /*Challenge 9: Compute the value
 What is the sum of a and b, minus c?
  let a = 4
  let b: Int32 = 100
  let c: UInt8 = 12*/

let aA = 4
let bB: Int32 = 100
let cC: UInt8 = 12
let suMM = Int(aA) + Int(bB) - Int(cC)
print(suMM)

 /*Challenge 10: Different precision 𝜋s What is the numeric difference between Double.pi and Float.pi?*/

let doublep: Double = .pi
print(doublep)          // higher precision and best accurcy

let flloatp: Float = .pi
print(flloatp)       // low precision

let diferrence = doublee - Double(flloatp)
print(diferrence)


class carr {

    let carr: String = "lkhm"
    let carrt: Int = 2006

    init(carr: String, carrt: Int){
    }
}

let cadcc = carr(carr: "piluu", carrt: 2007)
