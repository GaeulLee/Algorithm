import Foundation

func solution(_ numbers:[Int], _ direction:String) -> [Int] {
    var result: [Int] = []
    
    switch direction {
        case "right":
            result.append(numbers[numbers.count - 1])
            for i in 0...numbers.count - 2 { // 0 1
                result.append(numbers[i])
            }
        case "left":
            for i in 1...numbers.count - 1 { // 1 2
                result.append(numbers[i])
            }
            result.append(numbers[0])
        default:
            print("error")
    }
    
    return result
}