import Foundation

var arr: [[Int]] = []
var maxArr: [Int] = []

for _ in 0..<9 {
    let rows = readLine()!.split(separator: " ").map{ Int($0)! }
    arr.append(rows)
}

for index in 0..<9 {
    let maxInRow = arr[index].max()!
    maxArr.append(maxInRow)
}
let max = maxArr.max()!

for row in 0..<9 {
    for column in 0..<9 {
        if arr[row][column] == max {
            print(max)
            print("\(row+1) \(column+1)")
        }
    }
}