import Foundation

var arr: [[Character]] = []
var result: String = ""
var maxLength: Int = 0

for _ in 0..<5 {
    let input = readLine()!
    let row = Array(input)
    arr.append(row)
    
    if maxLength < row.count {
        maxLength = row.count
    }
}

for line in 0..<maxLength {
    for row in 0..<5 {
        if arr[row].count > line {
            result += String(arr[row][line])
        }
    }
}

print(result)