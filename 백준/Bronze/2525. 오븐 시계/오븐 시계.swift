import Foundation

let inputArr = readLine()!.components(separatedBy: " ")
let h = Int(inputArr[0])! // 17
let m = Int(inputArr[1])! // 40
let time = Int(readLine()!)! // 80 -> 19 0

func result(_ h: Int, _ m: Int, _ time: Int) -> String {
    var hour = h
    var minute = m
    let plusM = m + time
    
    if plusM > 59 { // 120 > 60
        minute = 0
        
        hour += plusM / 60 // 2
        minute += plusM % 60 // 0
        
        if hour > 23 {
            hour -= 24 
        }
    } else {
        minute = plusM
    }
    
    return "\(hour) \(minute)"
}

print(result(h, m, time))