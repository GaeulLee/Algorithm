import Foundation

let inputArr: [Int] = readLine()!.split(separator: " ").map{ Int($0)! }
let chess: [Int] = [1, 1, 2, 2, 2, 8]

var result = ""
for index in 0..<chess.count {
    result += String(chess[index] - inputArr[index]) + " "
}

print(result)