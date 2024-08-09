import Foundation

var N = Int(readLine()!)!     // 입력의 갯수 N
var inputs: [Int] = []        // 입력이 정리되어 들어갈 빈 배열

for _ in 0..<N {
    inputs.append(Int(readLine()!)!)
}

func answer(_ inputs: [Int]) -> Int {
    var tempArr: [Int] = []
    for num in inputs {
        tempArr.append(num)

        if tempArr.last == 0 {
            tempArr.removeLast()
            tempArr.removeLast()
        }
    }
    
    var result = 0
    for num in tempArr {
        result += num
    }
    
    return result
}

print(answer(inputs))