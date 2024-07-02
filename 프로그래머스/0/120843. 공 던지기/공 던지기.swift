import Foundation

func solution(_ numbers:[Int], _ k:Int) -> Int {
    var index = (k - 1) * 2
    if index > numbers.count {
        index = index % numbers.count
    }
    
    return numbers[index]
}