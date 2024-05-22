import Foundation

func solution(_ emergency:[Int]) -> [Int] {
    var result: [Int] = []
    
    for out in emergency {
        var cnt = 1
        for inner in emergency {
            if out < inner {
                cnt += 1
            }
        }
        result.append(cnt)
    }
    
    return result
}