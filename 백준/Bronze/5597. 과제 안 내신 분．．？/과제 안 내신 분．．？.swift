import Foundation

var arr: [Int] = []
for _ in 0..<28 {
    let num = Int(readLine()!)!
    arr.append(num)
}

var result: [Int] = []
for i in 1...30 {
    if !arr.contains(i) {
        result.append(i)
    }
}
result.sort()

print(result[0])
print(result[1])