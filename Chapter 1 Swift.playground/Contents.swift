import UIKit

var greeting = "Hello, playground"

// chapter 1: Expressions, Variables & Constants
//Satrting with Swift

/*Comments: Single line comment, Multiline comments, Nested comments
 printing out:- print function
 Arithmatic operation: +,-,/,*
 decimal number
 reminder operation: %
 shift operation: >>, <<
 order operation: +( - ) /
 Math function: sin, cos, squratroot
 Naming data: variable, comstant
 Usemeaningful name
 Increment and decrement */

// Comments
// This is Single line comments.

/* This is multiline comments.
 It can not exccute */


/* tHIS  is nested comments
 cannot be excuted
 // THis is single line
 we will get soon*/

//Printing out:- print function

print("Hello Swift, welcome")

// Arithmatic operation: +,-,/,*

3 + 5
3 - 1
3 * 5
20 / 5
34 % 4

let sumoftwoNumber = 2 + 3
let suboftwoNumber = 2 - 3
let multiplicationoftwoNumber = 2 * 3
let devisionoftwoNumber = 2 / 3

// Decimal NUmber
28 / 7
28.0 / 7.0

let result = 28.0 / 7.0

// Remonder operation

20 % 6
20.truncatingRemainder(dividingBy: 6)

let reminderoftwoNumber = 3 % 2
let decimalreminder = (3.0).truncatingRemainder(dividingBy: 2.0)

//Shift opeartion: left, right

4 << 6
23 >> 7

let leftshift = 1 << 3
let rightshift = 32 >> 8

//order of operation

350 + (50 / 4)

let resultorder = (8000 / (23 * 45) + 34 - (34 - 12))

//Math function

//degeree to radians

let sindegree = sin(45 * Double.pi / 180)

sin(45 * Double.pi / 180)
cos(45 * Double.pi / 180)

let root = 4.0 .squareRoot()

2.0 .squareRoot()

let minumn = min(2, 5)
let maximum = max(4, 5)

max(3, 5)
min(4, 3)

max(2.0 .squareRoot(), Double.pi / 2)

//Naming data: constant, variable
//Constant
let number: Int = 6
let pi:Double = 3.14

// variable
var variableNumber: Int = 10
variableNumber = 0
variableNumber = 1_00_000

//Use meaningful name
var personAge: Int = 23
let numberofPeson: Int = 34
var gradeofAverage: Double = 23.67

//Increment and decrement
var counter = 0
counter += 1
counter -= 1

counter = counter + 1
counter = counter - 1

counter *= 3
counter /= 4

//Mini execrices
// Declare a constant of type Int called myAge and set it to your age.

let myAge = 23
print(myAge)

 /*2. Declare a variable of type Double called averageAge. Initially, set it to your own
 age. Then, set it to the average of your age and my own age of 30.*/

var avaerageAge = 23
avaerageAge = 30
print(avaerageAge)

 /*3. Create a constant called testNumber and initialize it with whatever integer you’d like. Next, create another constant called evenOdd and set it equal to testNumber modulo 2. Now change testNumber to various numbers. What do you notice about evenOdd?*/

let testNumber = 34
let evenodd = testNumber % 2
// tetnumber - evennumber, evenodd - even

 /*4.  Create a variable called answer and initialize it with the value 0. Increment it by 1. Add 10 to it. Multiply it by 10. Then, shift it to the right by 3. After all of these operations, what’s the answer?*/

var answer = 0
answer += 1
answer += 10
answer *= 10
answer >> 3


//Challenges
/* Challenge 1: Variables
Declare a constant Int called myAge and set it equal to your age. Also, declare an Int variable called dogs and set it equal to the number of dogs you own. Then imagine you bought a new puppy and increment the dogs variable by one.*/

let myAGe: Int = 23
var dogs = 0
dogs += 1

/* Challenge 2: Make it compile
Given the following code:
Modify the first line so that it compiles. Did you use var or let?
 age: Int = 16
print(age)
age = 30
print(age) */

var age: Int = 16
print(age)
age = 30
print(age)


 /* Challenge 3: Compute the answer
 Consider the following code:
 Work out what answer equals when you add the following lines of code:

let x: Int = 46
let y: Int = 10
// 1
let answer1: Int = (x * 100) + y
// 2
let answer2: Int = (x * 100) + (y * 100)
// 3
let answer3: Int = (x * 100) + (y / 10) */

let x: Int = 46
let y: Int = 10

let answer1: Int = (x * 100) + y
print(answer1)

let answer2: Int = (x * 100) + (y * 100)
print(answer2)

let answer3: Int = (x * 100) + (y / 10)
print(answer3)

/* Challenge 4: Add parentheses
 Add as many parentheses to the following calculation, ensuring that it doesn’t change the result of the calculation.
 8-4*2+6/3*4 */

let ddresuult = 8 - 4 * 2 + 6 / 3 * 4
print(ddresuult)

(8 - (4 * 2) + 6 / (3 * 4))
((8 - 4) * (2 + 6) / (3 * 4))

 /* Challenge 5: Average rating
 Declare three constants called rating1, rating2 and rating3 of type Double and assign each a value. Calculate the average of the three and store the result in a constant named averageRating.*/

let rating1: Double = 7.8
let rating2: Double = 5.7
let rating3: Double = 4.8
let avergeRating: Double = (rating1 + rating2 + rating3) / 3
print(avergeRating)

  /*Challenge 6: Electrical power
 The power of an electrical appliance is calculated by multiplying the voltage by the current. Declare a constant named voltage of type Double and assign it a value. Then declare a constant called current of type Double and assign it a value. Finally, calculate the power of the electrical appliance you’ve just created, storing it in a constant called power of type Double.*/

let voltage: Double = 4.5
let current: Double = 5.8
let power: Double = voltage * current
print(power)

 /* Challenge 7: Electrical resistance
 The resistance of such an appliance can then be calculated (in a long-winded way) as the power divided by the current squared. Calculate the resistance and store it in a constant called resistance of type Double.*/

let ressitance: Double = power / (current * current)
print(ressitance)

/* Challenge 9: Quadratic equations
 A quadratic equation is something of the form a⋅x2 + b⋅x + c = 0. The values of x which satisfy this can be solved by using the equation x = (-b ± sqrt(b2 - 4⋅a⋅c)) / (2⋅a). Declare three constants named a, b and c of type Double. Then calculate the two values for x using the equation above (noting that the ± means plus or minus — so one value of x for each). Store the results in constants called root1 and root2 of type Double.*/

let a: Double = 3.6
let b: Double = 5.8
let c: Double = 2.1
let root1: Double = (-b + sqrt(b * b - 4 * a * c) / (2 * a))
print(root1)

let root2: Double = (+b + sqrt(b * b - 4 * a * c) / (2 * a))
print(root2)

