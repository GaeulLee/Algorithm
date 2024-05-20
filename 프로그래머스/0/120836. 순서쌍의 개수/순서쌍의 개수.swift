import Foundation

func solution(_ n:Int) -> Int {
    var result = 0
    for idx in 1...n {
        if n % idx == 0 {
            result += 1
        }
    }
    
    return result
}