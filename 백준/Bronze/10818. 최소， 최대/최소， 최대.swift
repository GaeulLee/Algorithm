import Foundation

let count = Int(readLine()!)! // 5
let numArr = readLine()!.split(separator: " ").map{ Int($0)! } // 20 10 35 30 7

print("\(numArr.min()!) \(numArr.max()!)")
