import Foundation

let testCaseCnt = Int(readLine()!)!

for _ in 0..<testCaseCnt {
    let arr = readLine()!.split(separator: " ").map{ $0 }
    let num = Int(arr[0])!
    let str = String(arr[1])
    
    var resultStr = ""
    for char in str {
        for _ in 0..<num {
            resultStr += String(char)
        }
    }
    print(resultStr)
}