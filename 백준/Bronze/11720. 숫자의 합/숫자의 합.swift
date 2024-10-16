import Foundation

let count = Int(readLine()!)!
let numbers = readLine()!

var result = 0
for num in numbers {
    result += Int(String(num))!
}

print(result)