import UIKit

var str = "Hello, playground"

//struct InfoStruct{
//    var name : String;
//    var title : String;
//    var age : Float;
//}
//class infoClass{
//    var name : String = "";
//    var title : String = "";
//    var age : Float = 0.0;
//
//    var arr = [ 1, 2,3, 4, 5 , 6, 7 , 8, 9, 10]
//    subscript (index: Int) -> Int{
//        get{
//            return arr[index]*3
//        }
//        set{
//            arr[index] = newValue*2
//        }
//    }
//}
//var objStruct = InfoStruct(name: "Rokaya", title: "Hussain", age: 24.5)
//var objClass = infoClass()
//objClass[0] = 5
//print(objClass[0])
var myObserver:Int = 0{
    willSet(newVal){
        print("will change to \(newVal)")
//        print("will change to \(newValue)")

    }
    didSet{
        print("changed to \(myObserver) from \(oldValue)")
    }
}
myObserver=5
