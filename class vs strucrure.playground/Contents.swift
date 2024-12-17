import UIKit

var greeting = "Hello, playground"

class myclass {

    var name: String

    init(name: String) {
        self.name = name
    }

    func forclasss(){
        let fname = myclass(name: "Pilu")
        var sname = fname
        sname.name = "Priyanka"
        print(sname.name)
        print(fname.name)
    }
}


//let classs = myclass(name: "piluuu")
//myclass.forclasss()


// Structus are fast, value type, stored in the stack memory, copied & mutated

struct quiz{
    let titel : String
    let datecreated: Date
    let ispremium: Bool?

    // structures have a implicity init

    /*init(titel: String, datecreated: Date) {
        self.titel = titel
        self.datecreated = datecreated*/


    /*init(titel: String, datecreated: Date = .now) {
     self.titel = titel
     self.datecreated = datecreated  */

    init(titel: String, datecreated: Date?, ispremium: Bool) {
        self.titel = titel
        self.datecreated = datecreated ?? .now
        self.ispremium = ispremium
    }
}

let myobject: String = "Heloo"
let myquiz: quiz = quiz(titel: "quiz 1", datecreated: .now, ispremium: true)
print(myquiz.titel)



// immutable struvt = all let constany = not mutable = cannot mutate it

struct usermodel{

    let name: String
    let ispremiunnn: Bool
}

var user1: usermodel = usermodel(name: "pilu", ispremiunnn: false)

@MainActor func markuserpremium(){
    print(user1)
    user1 = usermodel(name: user1.name, ispremiunnn: true)
    print(user1)
}
markuserpremium()

// mutable struct

struct usermodel2{
    let name: String
    var ispremiummm: Bool
}
var user2 = usermodel2(name: "pilu", ispremiummm: true)

@MainActor func markuserpremiummm(){
    print(user2)
    user2.ispremiummm = false  // mutate is staut
    print(user2)

}
markuserpremiummm()

// immutable struct

struct usermodell{

    let namee: String
    let ispremiunnnn: Bool

    func markaspreminum(newvalue: Bool)-> usermodell{
        usermodell(namee: "piluuu", ispremiunnnn: true)
    }
}

var user3 = usermodell(namee: "nick", ispremiunnnn: true)
user3.markaspreminum(newvalue: false)
print(user3.markaspreminum(newvalue: false))


// mutable struct
struct usermodell4{

    let nameeE: String
    var ispremiunnnN: Bool

    mutating func markuserpremiumm(){
        ispremiunnnN = true
    }
    mutating func updateispremiumm(newvalue: Bool){
        ispremiunnnN = newvalue
    }
}

var user4 = usermodell4(nameeE: "piluuu", ispremiunnnN: false)
user4.markuserpremiumm()
user4.updateispremiumm(newvalue: true)





//class

//classes are slow
//classes are stored in the heap
//object in the heap are refernce types
//rfencence type point to an object in memory and update the object in menory

// all the data needed for some screen

class screenViewmodel{
    let title: String
    var showButton: Bool

    // same init as a struct, except structs have impliict inits
    init(title: String, showButton: Bool) {
        self.title = title
        self.showButton = showButton
    }
    deinit {
        // runs as the objet is being removed from memory
        // structures do not nave deinit
    }
    func hidebutt(){
        showButton = false
    }

    func updatebuttt(newvalue: Bool){
        showButton = newvalue
    }


}
// notice that we are using a " let" becuses
// the object itself is nit cahnging
//the data inside the object is changing
let viewmodel: screenViewmodel = screenViewmodel(title: "screen 1", showButton: true)
viewmodel.showButton = false

viewmodel.hidebutt()
viewmodel.updatebuttt(newvalue: false)



class userr{

    let id: Int
    var username: String
    var password: String
    var role: String?
    var isloggin: Bool = false

    init(id: Int, username: String, password: String, role: String? = nil, isloggin: Bool) {
        self.id = id
        self.username = username
        self.password = password
        self.role = role
        self.isloggin = isloggin
    }

    // function to authenticate user

    func authenicate(password: String)-> Bool{
        if password == password{
            isloggin = true
            print("\(username) logged in succefully")
            return true
        }else{
            print("ay=uthenticatopn failed for user \(username)")
            return false
        }
    }

    // function to logout user

    func logout(){
        if isloggin{
            isloggin = false
            print("\(username) is log out")
        }else{
            print("\(username) is log in")
        }
    }

    // function to dispaly role

    func roleuser(){
        if let userrolle = role{
            print("\(username) role is :\(userrolle)")
        }else{
            print("\(username) has no assigned role")
        }
    }
}


class usemanager{

    var user: [userr] = [ ]

    // add new user

    func addue(_ usere: userr){
        user.append(usere)
        print("user: \(usere.username) added to the system")
    }

// find user by uernme

    func finduse(username: String)-> userr?{
        for userree in user{
            if userree.username == username{
                return userree
            }
        }
        return nil
    }

    //  start a seesion for laooged in user

    func startseesion(for user: userr){
        var statseesion = true
        var timeleft = 10

        while statseesion && timeleft > 0{
            print("session active for: \(user.username)")

            if timeleft == 0{
                statseesion = false
                print("seesion expired for: \(user.username)")
                user.logout()
            }
        }
    }

    func assignrole(role: String){
        switch role{
        case "admin":
            print("assigned as admit")

        default:
            print("invlid role assignment for ")
        }
    }
}


let used = usemanager()

let user12 = userr(id: 345, username: "76tfg", password: "434edcv", role: "admin", isloggin: true)

used.addue(user12)





/*class snakesAndLaddersGame {

    var playerPosition: Int
    let boardSize: Int
    let snakes: [Int: Int]
    let ladders: [Int: Int]


    init(playerPosition: Int, boardSize: Int, snakes: [Int : Int], ladders: [Int : Int]) {
        self.playerPosition = playerPosition
        self.boardSize = boardSize
        self.snakes = snakes
        self.ladders = ladders
    }


    // roll
    func rollDice() -> Int {
        return Int.random(in: 1...6)
    }

    // Move the player based on dice roll
    func movePlayer(steps: Int) {
        playerPosition += steps
        print("Player moves to position \(playerPosition)")

        // Check if the player lands on a snake or ladder
        playerPosition = checkSnakesAndLadders(position: playerPosition)
    }

    // Check if player hits a snake or a ladder
    func checkSnakesAndLadders(position: Int) -> Int {
        if let snakeTail = snakes[position] {
            print("Oh no! Snake! Moved down from \(position) to \(snakeTail)")
            return snakeTail
        }
        if let ladderTop = ladders[position] {
            print("Great! Ladder! Moved up from \(position) to \(ladderTop)")
            return ladderTop
        }
        return position
    }

    // Play the game until the player reaches the final square
    func startGame() {
        print("Starting the game of Snakes and Ladders!")

        while playerPosition < boardSize {
            let roll = rollDice()
            print("Player rolled a \(roll)")
            movePlayer(steps: roll)

            if playerPosition >= boardSize {
                print("Congratulations! You've reached position 100 and won the game!")
                break
            }
        }
    }
}

// Main Execution
let game = snakesAndLaddersGame(playerPosition:1, boardSize: 100, snakes: [26: 11, 52: 29, 62: 19, 66: 59, 74: 17, 89: 69, 94: 75, 98: 78], ladders: [4: 14, 9: 31, 18: 45, 21: 42, 28: 84, 51: 67, 71: 91, 78: 97])
game.startGame()
game.checkSnakesAndLadders(position: 4)
game.boardSize
game.ladders
game.playerPosition
game.snakes
game.movePlayer(steps: 2)
game.rollDice()*/

import Foundation

// Simple Snakes and Ladders Game

class SnakesAndLadders {
    var playerPosition = 1
    let boardSize = 100
    let snakes: [Int: Int] = [16: 6, 47: 26, 49: 11, 56: 53, 62: 19, 64: 60, 87: 24, 93: 73, 95: 75, 98: 78]
    let ladders: [Int: Int] = [2: 38, 7: 14, 8: 31, 15: 26, 28: 84, 36: 44, 51: 67, 71: 91, 78: 98, 87: 94]

    // Roll the dice
    func rollDice() -> Int {
        return Int.random(in: 1...6)
    }

    // Move the player
    func movePlayer() {
        let diceRoll = rollDice()
        print("You rolled a \(diceRoll)")
        playerPosition += diceRoll

        if playerPosition > boardSize {
            playerPosition = boardSize
        }

        print("You moved to position \(playerPosition)")

        // Check for snake or ladder
        checkSnakesAndLadders()
    }

    // Check if player lands on a snake or ladder
    func checkSnakesAndLadders() {
        if let snake = snakes[playerPosition] {
            print("Oh no! You landed on a snake! Slide down to \(snake).")
            playerPosition = snake
        } else if let ladder = ladders[playerPosition] {
            print("Yay! You climbed a ladder! Move up to \(ladder).")
            playerPosition = ladder
        }
    }

    // Play the game
    func play() {
        while playerPosition < boardSize {
            movePlayer()
            if playerPosition == boardSize {
                print("Congratulations! You've won the game!")
                break
            }
        }
    }
}

// Create and play the game
let game = SnakesAndLadders()
game.play()

