import Foundation

print("Hello World")
func  swap(_ a: inout Int, _ b: inout Int ) {
    var temp : Int = a;
    a = b;
    b = temp ;    
}
var num1 : Int = 5, num2: Int = 6
swap(&num1 , &num2)
print(num1)
print(num2)