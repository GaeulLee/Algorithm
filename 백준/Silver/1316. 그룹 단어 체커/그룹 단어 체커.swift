import Foundation

let lines = Int(readLine()!)!
var result: Int = 0

for _ in 0..<lines {
    let word = readLine()! // happy
    var prevChar: Character = "."
    var charArr: [String] = []
    
    // 연속되는 문자 제거
    for char in word {
        if prevChar == char {
            continue
        }
        charArr.append(String(char))
        prevChar = char
    }
    
    // 중복되는 문자 있는지 확인하고 카운트
    let noDupl: Set = Set(charArr)
    if noDupl.count == charArr.count {
        result += 1
    }
}

print(result)