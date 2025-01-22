import Foundation

func solution(_ n:Int) -> Int {
    let arr = Array(String(n, radix: 2)).filter{ $0 == "1" }
    var oneCnt = 0
    var num = n
    var answer = 0
    
    while oneCnt != arr.count {
        num += 1
        
        let arr = Array(String(num, radix: 2)).filter{ $0 == "1" }
        oneCnt = arr.count
    }
    answer = num
    
    return answer
}