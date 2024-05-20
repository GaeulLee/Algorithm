import Foundation

func solution(_ arr:[String]) -> String {
    var result = ""
    
    for idx in 0..<arr.count {
        result += arr[idx]
    }
    
    return result
}