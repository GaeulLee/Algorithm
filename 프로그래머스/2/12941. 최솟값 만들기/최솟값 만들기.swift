import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int {
    let sortedA: [Int] = A.sorted(by: <)
    let sortedB: [Int] = B.sorted(by: >)
    var result: Int = 0
    
    for i in 0..<A.count {
        result += sortedA[i] * sortedB[i]
    }
    
    return result
}