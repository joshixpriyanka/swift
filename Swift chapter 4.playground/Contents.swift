import UIKit

var greeting = "Hello, playground"


class RKVD10th2024 {
    let totalStudents: Int
    var absent: [Int]?
    let rollNumbers: [Int]
    //    let studentsName: [String]
    //    let topperStudents: [Int: String]

    init(totalStudents: Int, rollNumbers: [Int]) {
        self.totalStudents = totalStudents
        self.rollNumbers = rollNumbers
    }

    func printTotalStudents() {
        print("Total student is \(self.totalStudents)")
    }

    func markAbsent(rollNumber: Int) {
        absent?.append(rollNumber)
    }

    func printAbsentStudents() {
        if let absentstudents = absent {
            for studen in absentstudents {
                print("Absent student id is \(studen)")
            }
        } else {
            print("No absent students")
        }
    }
}

let classA = RKVD10th2024(totalStudents: 60, rollNumbers: [Int]())
classA.printTotalStudents()
classA.printAbsentStudents()


// structure

struct rectangle{

    var weight: Double = 10.5
    let height: Double

    func area()-> Double{
        return weight * height
    }

    func parameter()-> Double{
        return weight + height
    }
}

let rect = rectangle(height: 10.4)
rect.parameter()
rect.area()


// define structure

struct name{

    var nameeEE: String

    func nameeE(){
        print("My name is \(nameeEE)")
    }
}
var namee = name(nameeEE: "Karan")
namee.nameeEE
namee.nameeE()

struct Location {
    let x: Int
    let y: Int
}
let storeLocation = Location(x: 3, y: 3)
storeLocation.x
storeLocation.y

struct DeliveryArea {
    var center: Location
    let radius: Double = 34.7

}
let storarea = DeliveryArea(center: storeLocation)
storarea.center.y


//class

class exmapleClass {

    // peropety can be optionals

    var optionalvalue: Int?

    // function with parameters and retun type

    func performparametr (a: Int, b: Int)-> Int{
        a + b
    }

    // if-else optional binding

    func chackoptional(){
        if let value = optionalvalue{
            print("optional has a value: \(value)")
        }else{
            print("optional is nil")
        }
    }

    // method using switch statement
    func decsribnumber(number: Int){
        switch number{
        case 0:
            print("zeor")
        case 1:
            print("one")
        default:
            print("no number")
        }
    }

    // methid using for loop

    func printnumber(range: Int){
        for i in 1...range{
            print(i)
        }
    }

    //while loop

    func countdoen(numbef: Int){
        var count = numbef
        while count > 0{
            print(count)
            count -= 1
        }
    }

    // if-else with optional and nil

    func setoptional(newvalue: Int?){
        if newvalue == nil{
            print("set value")
        }else{
            print("no value")
        }
    }
}

//usage

let exmaplee = exmapleClass()

//perform oprtaion

let rev = exmaplee.performparametr(a: 10, b: 7)
print("result is \(rev)")

// check optional
exmaplee.chackoptional()

//
exmaplee.setoptional(newvalue: nil)
exmaplee.chackoptional()

exmaplee.setoptional(newvalue: 43)
exmaplee.chackoptional()

// switch
exmaplee.countdoen(numbef: 3)

exmaplee.decsribnumber(number: 2)
exmaplee.printnumber(range: 5)




// class  practices

class product {

    let id: Int
    var name: String
    var stock: Int
    var price: Double
    var discount: Double?

    init(id: Int, name: String, stock: Int, price: Double, discount: Double? = nil) {
        self.id = id
        self.name = name
        self.stock = stock
        self.price = price
        self.discount = discount
    }


    // calculate the final price

    func finalprice()-> Double{
        if let discount = discount{
            price - (price * discount / 100)
        }else{
            price
        }
    }
}

class invetory{

    var products: [product] = [ ]

// add new product to the inverty

    func addproduct(productt: product){
        products.append(productt)
        print("\(productt.name) added to the inverty")
    }

    // final product id

    func finalproduct(id: Int)-> product?{
        for product in products{
            if product.id == id{
                return product
            }
        }
        return nil
    }

// chaeck stock for a product and descide if restocking

    func checkStock(productId: Int){
        guard let product = finalproduct(id: productId)else{
            print("product not found")
            return
        }

       // if product.stock == 0{
         //   print("\(product.name)")
           // restStockproduct(product)
       // }


    }
}

class User {
    let id: Int
    var username: String
    var password: String
    var role: String? // Role can be optional (Admin, User, etc.)
    var isLoggedIn: Bool = false

    init(id: Int, username: String, password: String, role: String? = nil) {
        self.id = id
        self.username = username
        self.password = password
        self.role = role
    }

    // Function to authenticate user
    func authenticate(inputPassword: String) -> Bool {
        if inputPassword == password {
            isLoggedIn = true
            print("\(username) logged in successfully.")
            return true
        } else {
            print("Authentication failed for user: \(username).")
            return false
        }
    }

    // Function to logout user
    func logout() {
        if isLoggedIn {
            isLoggedIn = false
            print("\(username) logged out.")
        } else {
            print("\(username) is not logged in.")
        }
    }

    // Function to display user role
    func displayRole() {
        if let userRole = role {
            print("\(username)'s role is: \(userRole)")
        } else {
            print("\(username) has no assigned role.")
        }
    }
}

class UserManager {
    var users: [User] = []

    // Function to add new user
    func addUser(_ user: User) {
        users.append(user)
        print("User \(user.username) added to the system.")
    }

    // Function to find user by username
    func findUser(by username: String) -> User? {
        for user in users {
            if user.username == username {
                return user
            }
        }
        return nil
    }

    // Function to authenticate users
    func login(username: String, password: String) {
        guard let user = findUser(by: username) else {
            print("User \(username) not found.")
            return
        }

        if user.authenticate(inputPassword: password) {
            startSession(for: user)
        }
    }

    // Function to log out users
    func logout(username: String) {
        guard let user = findUser(by: username) else {
            print("User \(username) not found.")
            return
        }

        user.logout()
    }

    // Start a session for the logged-in user (while loop example)
    func startSession(for user: User) {
        var sessionActive = true
        var timeLeft = 10 // Session duration is 10 units

        while sessionActive && timeLeft > 0 {
            print("Session active for \(user.username). Time left: \(timeLeft)")
            timeLeft -= 1
            if timeLeft == 0 {
                sessionActive = false
                print("Session expired for \(user.username). Logging out...")
                user.logout()
            }
        }
    }

    // Switch example: Assign roles to users
    func assignRole(to username: String, role: String) {
        guard let user = findUser(by: username) else {
            print("User \(username) not found.")
            return
        }

        switch role {
        case "Admin":
            user.role = "Admin"
            print("\(username) assigned as Admin.")
        case "User":
            user.role = "User"
            print("\(username) assigned as User.")
        default:
            print("Invalid role assignment for \(username).")
        }
    }

    // Generate report of all users in the system
    func generateUserReport() {
        for user in users {
            let roleInfo = user.role ?? "No Role"
            let loginStatus = user.isLoggedIn ? "Logged In" : "Logged Out"
            print("User: \(user.username), Role: \(roleInfo), Status: \(loginStatus)")
        }
    }
}

// Usage

let userManager = UserManager()

// Adding users
let user1 = User(id: 1, username: "john_doe", password: "password123")
let user2 = User(id: 2, username: "jane_smith", password: "qwerty")
let user3 = User(id: 3, username: "admin_user", password: "adminpass")

userManager.addUser(user1)
userManager.addUser(user2)
userManager.addUser(user3)

// Log in users
userManager.login(username: "john_doe", password: "password123")
userManager.login(username: "jane_smith", password: "wrongpassword") // Incorrect password
userManager.login(username: "admin_user", password: "adminpass")

// Assign roles
userManager.assignRole(to: "john_doe", role: "User")
userManager.assignRole(to: "admin_user", role: "Admin")

// Log out user
userManager.logout(username: "john_doe")

// Generate a report
userManager.generateUserReport()



// basics definition

// struct

struct person {

    var nAMe: String
}
