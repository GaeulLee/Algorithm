import Foundation

let lines = Int(readLine()!)! // 5
var input: [Int] = []

for _ in 0..<lines {
    input.append(Int(readLine()!)!)
}

input.sort()

for num in input {
    print(num)    
}