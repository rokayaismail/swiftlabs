import UIKit


var arr : [Int] = [1 , 2 , 3 , 4 ,9, -15]


func calcMinandMax(_ array : [Int]) -> (Int , Int){
    var minVal: Int = array[0] , maxVal: Int = array[0];
    for i in 1..<array.count {
        if array[i] < minVal {
            minVal=array[i]
        }
        if array[i] > maxVal {
            maxVal=array[i]
        }
    }
    return (minVal ,maxVal)
}
let Values = calcMinandMax(arr)
print("Minimum value = \(Values.0) and Maximum value = \(Values.1)")
