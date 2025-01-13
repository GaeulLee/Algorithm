import Foundation

let NX: [Int] = readLine()!.split(separator: " ").map{ Int($0)! }
let arr: [String] = readLine()!.split(separator: " ").map{ String($0) }
var result = arr.filter{ Int($0)! < NX[1] }.joined(separator: " ")

print(result)