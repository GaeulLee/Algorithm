import Foundation

let input = readLine()!.uppercased()
let inputSet = Set(input) // 중복 제거
let inputArr = Array(inputSet) // array로 변환

var strCntArr: [Int] = []
for char1 in inputSet {
    var cnt = 0
    for char2 in input {
        if char1 == char2 {
            cnt += 1
        }
    }
    strCntArr.append(cnt)
}

let maxNum = strCntArr.max()!
let firstIndex = strCntArr.firstIndex(of: maxNum)
let lastIndex = strCntArr.lastIndex(of: maxNum)


if firstIndex! == lastIndex! {
    print(inputArr[firstIndex!])
} else {
    print("?")
}