import Foundation

var arr: [Int] = []
for _ in 0..<10 {
    let num = Int(readLine()!)!
    arr.append(num)
}

var namArr: [Int] = []
for num in arr {
    namArr.append(num % 42)
}

var result: [Int] = []
for nam in namArr {
    if !result.contains(nam) {
        result.append(nam)
    }
}

print(result.count)