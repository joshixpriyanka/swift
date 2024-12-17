import UIKit

var greeting = "Hello, playground"

/*Compersion operator: Bool, boolean logic
 string equality, boolean toggling, short circuiting
 if statemt, else- else if, scope in if
 tenary condition
 while, repeart while, breaking out loop*/

// Bollean:- true or false

let yes: Bool = true
let no: Bool = false

let isswiftfun: Bool = true


// type sfaety- type annotation
let yess = true
let noo = false

//compare data:- equal to, not equal to, greater than or equal, less than or equal

let doeoneequal = (1 == 2)
let doesnotequal = (1 != 2)
let equaltotwo = (1 > 4)
let equltoo = (1 >= 5)
let greqterthan = (4 < 6)
let lessthanequal = (4 <= 7)

let ass = 3
let bss = 4
let resu = ass < bss
print(resu)

// Boolean logic:- and(&&) or(||)
// ANd - both condition are true, or- both condition aare false

let falseon = (2 > 4) && 5 > 8
let orand = (2 > 4) || 5 > 8

//combine complex condition

let combine = 2 > 4 && 5 < 7 || 4  > 9

let age = 30
let isaDult = age > 18 && age < 65
print(isaDult)


//String comparisons:- equal, greter than, less than

let dogequal = ("dog" == "cat")
let dogg = "dog" < "cat"
let doggg = "dog" > "cat"

//toggling bool:- switch on & off

var switchoff = true
switchoff.toggle()
switchoff.toggle()


//Switch control:- if statement, else, and else-if

//if:- condition true, run inside ()

if 2 > 1{
    print("2 is greater than 1")
}


let temperature = 25
if temperature > 20{
    print("It's warm outside")
}

//else:- if condition is false, run else statemet

let animal = "fox"
if animal > "dog" && animal > "cat"{
    print("house pet dog")
}else{
    print("house not pet dog")
}

if temperature > 20{
    print("It's a warm")
}else{
    print("It's not a warm")
}

//else-if:-  checking multipl condition, firts condiiton is true , run block

let hours = 19
var week = " "

if hours < 6{
    week = "morning"
}else if hours < 12{
    week = "good morning"
}else if hours < 17{
    week = "good afternoon"
}else if hours < 20{
    week = "good evening"
}else if hours < 24{
    week = "good night"
}else{
    week = "Beautiful day"
}
print(week)


if temperature > 24{
    print("warm")
}else if temperature > 34{
    print("hot")
}else{
    print("cold")
}

//short circuiting

let name = "matt"
if 3 > 2 && name == "karan"{
    print("Valid")
}

let isAudult = true
let hasID = false
if isAudult && hasID{
    print("You can enter")
}

// scope in if:- inside if condition is variable declar, donot use outside block

var housworked = 45
var prics = 0

if housworked > 40{
    let houseover = housworked - 40
    prics += houseover * 50
    housworked -= houseover
}

prics += housworked * 25
print(prics)

if true{
    let x = 10
    print(x)
}


// the ternary condiiton
// condition? true: false

let a = 15
let b = 10
let min = (a < b) ? a : b
let max = (a > b) ? a : b

let agEE = 18
let message = agEE >= 18 ? "YOu are an auult" : "You are a minor"
print(message)

//loops: while, repeat-while loop, breaking out of a loop

// while loop: repeat code multiple time, conditon is true, loop run, check next iteration, again run. condition is false, loop stops, check condition before loop body executes

var sum = 1
while sum < 1000{
    sum = sum + (sum + 1)
}


var cou = 5
while cou > 0{
    print(cou)
    cou -= 1
}

// repeat- while loop:- code is run, then after  check condition is true, check condition after loop body executes

var summ = 1
repeat{
    summ = summ + (summ + 1)
}while summ < 1000


repeat{
    print(cou)
    cou -= 1
}while cou > 0



// Breaking out of loop:- exit loop early, even condition is still true, exit the loop before the conditions becomes false
var suM = 1
while true {
    suM = suM + (suM + 1)
    if suM >= 7000{
        break
    }
}

var summm = 0
while true{
    summm += 1
    if summm == 10{
        break
    }
}


// Mini-exercises: booleaan
 /* 1. Create a constant called myAge and set it to your age. Then, create a constant named isTeenager that uses Boolean logic to determine if the age denotes someone in the age range of 13 to 19.*/

let myAgee = 23
let isTeenager = myAgee > 13 && myAgee < 19
print(isTeenager)


/* 2. Create another constant named theirAge and set it to my age, which is 30. Then, create a constant named bothTeenagers that uses Boolean logic to determine if both you and I are teenagers.*/

let theirAgge = 30
let bothTeenagers = (myAgee >= 13 && myAgee <= 19) && (theirAgge >= 13 && theirAgge <= 19)
print(bothTeenagers)

 /*3. Create a constant named reader and set it to your name as a string. Create a constant named author and set it to my name, Matt Galloway. Create a constant named authorIsReader that uses string equality to determine if reader and author are equal.*/

let reader = "Joshi Priyanka"
let author = "Matt Galloway"
let authorIsReader = (reader == author)
print(authorIsReader)


 /*4. Create a constant named readerBeforeAuthor which uses string comparison to determine if reader comes before author.*/

let readerBeforeAuthor = reader > author
print(readerBeforeAuthor)


/* Mini-exercises:- loop statement
 1. Create a constant named myAge and initialize it with your age. Write an if statement to print out Teenager if your age is between 13 and 19 and Not a teenager if your age is not between 13 and 19.*/

let myAge = 23
if myAge >= 13 && myAge <= 19{
    print("Teenager")
}else{
    print("Not a teenager")
}


 /*2. Create a constant named answer and use a ternary condition to set it equal to the result you print out for the same cases in the above exercise. Then print out answer.*/

let named = myAge >= 13 && myAge <= 19 ? "Tennager" : "Not a teenager"
print(named)

/* Mini-exercises:- while loop
 1. Create a variable named counter and set it equal to 0. Create a while loop with the condition counter < 10, which prints out counter is X (where X is replaced with counter value) and then increments counter by 1.*/

var counter = 0
while counter < 10 {
    print(counter)
    counter += 1
}

 /*2. Create a variable named counter and set it equal to 0. Create another variable named roll and set it equal to 0. Create a repeat-while loop. Inside the loop, set roll equal to Int.random(in: 0...5) which means to pick a random number between 0 and 5. Then increment counter by 1. Finally, print After X rolls, roll is Y where X is the value of counter and Y is the value of roll. Set the loop condition such that the loop finishes when the first 0 is rolled.*/

// The if statement is used for evaluating conditions that can result in true or false, while the switch statement evaluates an expression against multiple possible values. You would use if when you have simple conditions or a small number of possibilities, and switch when you need to match multiple specific cases, especially for enums or ranges.

// number is positive or negative

func checkNumber(_ number: Int){
    if number > 0{
        print("positive")
    }else if number < 0{
        print("Negative")
    }else{
        print("zeor")
    }
}

//boolean logic

let isrianing = true
if isrianing {
    print("Take an umbrella")
}

// ! operator
let issunny = true
let isnotsunnay = !issunny // true to false falliping

//short ciccuit

func iseven(number: Int)-> Bool{
    return number % 2 == 0
}
let numberr = 2
if numberr > 0 && iseven(number: numberr){
    print("\(numberr) is positive and even")
}else{
    print("\(numberr) is either not positive or not even")
}

// real world boolean logic implement feature

func canacc(age: Int, ispremiumm: Bool){
    if age > 18 && ispremiumm{
        print("Access granted to premium featured")
    }else{
        print("Access denied")
    }
}
canacc(age: 23, ispremiumm: false)

// calculator app

func calculatee(a: Double, b: Double, opertion: String){
    switch opertion{
    case " + ":
        print("\(a+b)")
    case " - ":
        print("\(a-b)")
    case " / ":
        if b != 0{
            print("a/b")
        }
    default:
        print("bb")
    }
}
calculatee(a: 3.4, b: 5.6, opertion: " + ")

//toggling bollean

var lightswitchoff = true
@MainActor func togglelight() {
    lightswitchoff.toggle()
    print("The light is now \(lightswitchoff ? "ON" : "OFF")")
}
togglelight()

// ternary condiitonal operators
let ageE = 16
let candrive = ageE > 16 ? "Yes, can drive" : "No, cannot drive"
print(candrive)

// calculate price based on hours:- if, else

let hoursWorked = 40
let hourlyrate = 20.0
var price: Double

if hoursWorked > 40 {
    price = hourlyrate * 40 + (hourlyrate * 1.5 * Double(hoursWorked - 40)) // Overtime
} else {
    price = hourlyrate * Double(hoursWorked)
}
print(price)

let pricsss = hoursWorked > 40 ? hourlyrate * 40 + (hourlyrate * 1.5 * Double(hoursWorked - 40)) : hourlyrate * Double(hoursWorked)
print(pricsss)


// if-else- else if, while, teneray , boolean
// practice coding

// positive, negative
func pone(num: Int){
    if num > 0{
        print("positive")
    }else if num < 0{
        print("negative")
    }else{
        print("zeor")
    }
}
pone(num: 3)

//evan or odd

func evenodd(numc: Int){
    if numc % 2 == 0{
        print("even")
    }else{
        print("odd")
    }
}
evenodd(numc: 4)

/* grade evelution
let grade = 45
 switch
switch grade{
case 90...100:
    print("A")
case 80...70:
    print("b")
default:
    print("fail")
}*/


//age chack
func canvote(agEE: Int){
    if agEE > 18{
        print("vote")
    }else{
        print("not vote")
    }
}
canvote(agEE: 34)

// day of week
func dayofweek(dayy: Int){
    switch dayy{
    case 1:
        print("sunday")
    case 2:
        print("monday")
    case 3:
        print("tuseday")
    default:
        print("not valid")
    }
}
dayofweek(dayy: 2)

// gade chacke multilple condition

func charckgradee(gardeL:String){
    switch gardeL{
    case "a","b":
        print("passing")
    default:
        print("fail")
    }
}
charckgradee(gardeL: "a")

//BMI calculator
func calcultor(weight: Double, height: Double){
    let bmi = weight / (height * height)
    switch bmi{
    case ..<18.5:
        print("underweight")
    case 56.8...78.8:
        print("over weight")
    default:
        print("obesee")
    }
}
calcultor(weight: 45.7, height: 123.7)

//boolean logic condition
func canAcess(agEe: Int, iscitiozen: Bool){
    if agEe >= 18 && iscitiozen{
        print("Acess garned")
    }else{
        print("Access denied")
    }
}
canAcess(agEe: 43, iscitiozen: true)
