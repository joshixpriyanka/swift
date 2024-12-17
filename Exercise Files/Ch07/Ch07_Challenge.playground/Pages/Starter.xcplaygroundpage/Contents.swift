/*:
 # Chapter Challenge: Combat Actions
 ---
 
 ### Tasks
 1. Create an enumeration called **ActionError** that adopts the **Error** protocol with three cases - **InsufficientMP**, **OutOfRange**, and **UnknownError**
 2. Declare a function called **attackEnemy** that takes in an integer named **mp** and a double named **distance** as parameters and returns an optional boolean.
 3. Mark **attackEnemy** as a throwable function
 4. Add two guard statements - if **mp** is less than 10 throw **InsufficientMP**, if **distance** is greater than 5.89 throw **OutOfRange**
 5. If both guard statements pass, return true
 6. Use a **do-catch* statement to call **attackEnemy** and handle each error case individually
 7. Unwrap the optional return value from **attackEnemy** using an **if-let** statement
 
 [Previous Topic](@previous)
 
 */
// 1

enum ActionError: Error {
    case InsufficientMp
    case OutOfrange
    case UnknownError
}

// 2  -   3
func attackEnemy(mp: Int, distance: Double) throws -> Bool? {

    //  4
    guard mp > 10 else {
        throw ActionError.InsufficientMp
    }

    guard distance < 5.89 else {
        throw ActionError.OutOfrange
    }

    //  5
    return true
}

// 6

do {
    try attackEnemy(mp: 12, distance: 5)
    print("Attack landed!")
}catch ActionError.InsufficientMp {
    print("Sorry, you do not have enough Mp for that one...")
}catch ActionError.OutOfrange {
    print("The enemy is too away to hit...")
}catch ActionError.UnknownError {
    print("Not sure what happened there boss...")
}catch{
    print("Undesined error detected...")
}

// 7
if let attackSuccess = try? attackEnemy(mp: 55, distance: 5) {
    print("Attack Success: \(attackSuccess)")
}
