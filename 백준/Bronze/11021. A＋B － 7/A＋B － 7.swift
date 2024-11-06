import Foundation

let T = Int(readLine()!)!
for i in 1...T {
    let AB = readLine()!.split(separator: " ").map{ Int($0)! }
    print("Case #\(i): \(AB[0]+AB[1])")
}