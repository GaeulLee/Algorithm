import Foundation

func solution(_ s:String) -> [Int] {
    var str = s
    var removeCount = 0
    var changeCount = 0
    
    while str != "1" {
        let arr = Array(str).filter{ $0 == "1" }
        let removedZero = str.count - arr.count
        
        removeCount += removedZero
        changeCount += 1
        str = String(arr.count, radix: 2)
    } 
    
    return [ changeCount, removeCount ]
}