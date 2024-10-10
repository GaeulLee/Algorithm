import Foundation

let total = Int(readLine()!)!
let count = Int(readLine()!)!

var totalToCheck: Int = 0
for _ in 1...count {
    let listArr = readLine()!.components(separatedBy: " ")
    let price = Int(listArr[0])!
    let amount = Int(listArr[1])!
    
    totalToCheck += (price * amount)
}

if totalToCheck == total {
    print("Yes")
} else {
    print("No")
}
