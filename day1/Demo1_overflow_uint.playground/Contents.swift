import UIKit

var str = "Hello, playground"
//let x : UInt = -1
//var y : Int8 = Int8.max + 1
print(str)
let httpstatus = (404 , "Not found")

print(httpstatus.0)
print(httpstatus.1)

let httpstatus2 = (code:404 , msg:"Not found")

print(httpstatus2.code)
print(httpstatus2.msg)

//var myOp : Optional<Int> = 5
//print(myOp)
//Optional(5)

var myOp : Int? // = 5
//optional binding (safe)
if let myVal = myOp{
    print(myVal)
}else{
    print("cannot Unrwap")
}
//forced un rwaping
//print(myOp!)

//var impOp : Int? = 7
//var imp2 : Int = impOp!
//print(imp2)

//implicit unrwap
var impOp : Int! = 7
var imp2 : Int = impOp
print(imp2)
