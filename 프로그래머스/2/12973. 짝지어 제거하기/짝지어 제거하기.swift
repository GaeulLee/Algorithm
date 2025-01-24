import Foundation

func solution(_ s:String) -> Int{
    var inputArr = Array(s)
    var resultArr: [Character] = []
    
    for letter in inputArr {
        if !resultArr.isEmpty && resultArr.last! == letter {
            resultArr.removeLast()
        } else {
            resultArr.append(letter)
        }
    }

    return resultArr.isEmpty ? 1: 0
}