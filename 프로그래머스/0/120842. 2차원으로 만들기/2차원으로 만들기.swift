import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [[Int]] {
    var result: [[Int]] = []
    var comCnt = num_list.count / n // 3
    var first = n - n // 0
    var last = n - 1 // 2
    
    for comp in 0...comCnt-1 { // 012
        var arr: [Int] = []
        for i in first...last { // 012 .. 345
            arr.append(num_list[i]) // [100 95 2] ..
            
        }
        result.append(arr)
        
        first += n
        last += n
    }
    
    return result
}