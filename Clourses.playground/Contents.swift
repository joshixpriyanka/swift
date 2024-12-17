import UIKit

var greeting = "Hello, playground"

var age = 32

// function
func someFunction() -> String{
    return "Alex"
}
print(someFunction())

// clourses

var getName = {
    return " Hey Alex!"
}
print(getName())

// function syntax
/*func name(parameter)-> (returnType) {
    // body of our function
}*/

// clourses syntax
/*{(parameter)-> (returntype) in
    // body of clourses

}*/

func printName(){
    print("Hello David!")
}

var printNameusingClourses = {()-> () in
    // body of our clourse
    print("Hello, using our clourse")

}

printName()
printNameusingClourses()


// function

func printNamewithString(name: String){
    print("Hello, \(name)")
}
printNamewithString(name: "Alexa")

//(string)-> ()
var printVarFORfunction:(String)->() = printNamewithString
printNamewithString(name: "Alexa")


// clourses
var printwithClourse:(String)-> () = { (nameE)->() in
    print("Hello,\(nameE)")
}
printwithClourse("Tom")

// clourse with parameter

func appendTwostring(name1: String, name2: String)-> String{
    return " Welcome \(name1) and \(name2)"
}
print(appendTwostring(name1: "Pilu", name2: "Avani"))

var appentwoStringwithClourse:(String,String)-> String = {(name3, name4)-> String in
    return ("Welcome \(name3) and \(name4)")
}
print(appentwoStringwithClourse("aVAni","pilu"))

//clourse as function parameter

func myFunction(myclourse: ()-> ()){
    print("Function invoked")
    myclourse()
}

myFunction(myclourse:{
    print("clourse is invoked")
})


// Trailling clourse syntax

func myfunction(withmessage:String, mycloursee:()-> ()){
    //body of our function
    print(withmessage)
    mycloursee()
    print("Function ended")
}

// trailling syntax
myfunction(withmessage: "Hello message") {
    print("Hello from clourse")
}


//myfunction(withmessage: "Hello message", mycloursee: {print("Hello from clourse")})


// Use of Autoclourses

func writefile(isfileopened:Bool, filename:String){
    if isfileopened{
        print("Do thewriting stufs on fire \(filename)")
    }
}

// filename is call as function

func getfilename()-> String{
    print("Do the stufs to get file name")
    return " Employee_file"
}
writefile(isfileopened: true, filename: getfilename())

// above isopend is false, but getfilename is run, but donot printed getfilename,

// filname :- string to clourses

func writetoFilee(isopened: Bool, filenameclourse:()-> String){
    if isopened {
        print("Do the writing stufs on fire \(filenameclourse())")
    }
}

func getfilenamee()-> String{
    print("Do the stufs to get file name")
    return " Employee_file"
}

writetoFilee(isopened: true) {
    return getfilenamee()
}


// autoclourse

func writetoFileE(isopened: Bool, filenameclourse:@autoclosure()-> String){
    if isopened {
        print("Do the writing stufs on fire \(filenameclourse())")
    }
}

func getfilenameE()-> String{
    print("Do the stufs to get file name")
    return " Employee_file"
}

//writetoFileE(isopened: true, filenameclourse: "filename")
writetoFileE(isopened: true, filenameclourse: getfilenameE())


// Autoclourse:- experess wrap clourse use autoclourse,

func myFunctionn(mycloursess: @autoclosure()-> (), withStringpparam: String){
    print(withStringpparam)
    mycloursess()
}

/*myFunctionn(mycloursess: {
    print("Hello from closures")
}, withStringpparam: "Message param")*/

myFunctionn(mycloursess: (print("Hello from clousesr")), withStringpparam: "Message")

// aytoclourse:- autoclourse donot take strigh,int but return value take string

func myFunctionnr(mycloursess: @autoclosure()-> (Int), withStringpparam: String){
    print(withStringpparam)
    mycloursess()
    var int = mycloursess()  // print autoclourses
    print(int)
}

myFunctionnr(mycloursess: (34), withStringpparam: "Messageee")

// expression clourses->  autoclourses wrap-> return int


//  @escaping closure

// non escaping closure
func nonescapingfunction(nonescaping: ()->()){
    print("Starting of function")
    nonescaping()
    print("Function ended")
}

nonescapingfunction {
    print("Clourse invoked")
}


class downloadmanager {

    var ondownloaddone: ((String)->())?
    func downloadstsrt(completionhandler:@escaping (String)->()){
        print("Download start")
        ondownloaddone = completionhandler

        // do lengthy tasks
        DispatchQueue.main.asyncAfter(wallDeadline: .now() + 3){
            self.downloadfinished()
        }
    }

    func downloadfinished(){
        ondownloaddone?("REceived data")

    }
}

let dm = downloadmanager()
dm.downloadstsrt { (data) in
    print(data)
}

