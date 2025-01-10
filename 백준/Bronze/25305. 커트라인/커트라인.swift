import Foundation

let nk: [Int] = readLine()!.split(separator: " ").map{ Int($0)! }
let scores: [Int] = readLine()!.split(separator: " ").map{ Int($0)! }

print(scores.sorted().reversed()[nk[1]-1])