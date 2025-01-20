import Foundation

func solution(_ s:String) -> Bool {
    var stack: [Character] = []
    
    for letter in s {
        if letter == "(" {
            stack.append(letter)
        } else {
            guard let removedLetter = stack.popLast() else { return false }
        }
    }
    
    if stack.count == 0 {
        return true
    } else {
        return false
    }
}