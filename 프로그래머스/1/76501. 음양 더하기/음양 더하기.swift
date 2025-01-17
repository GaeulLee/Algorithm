import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var result: Int = 0
    
    for index in 0..<absolutes.count {
        if signs[index] {
            result += absolutes[index]
        } else {
            result += (absolutes[index] * -1)
        }
    }
    
    return result
}