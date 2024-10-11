import Foundation

var numArr: [Int] = []
for _ in 0..<9 {
    let num = Int(readLine()!)!
    numArr.append(num)
}

let max = numArr.max()!
let index = numArr.firstIndex(of: max)!

print(max)
print(index+1)