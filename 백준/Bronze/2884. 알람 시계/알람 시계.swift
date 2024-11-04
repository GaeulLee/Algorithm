import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }

var totalMin = 0
if input[0] == 0 {
    totalMin = (24*60) + input[1] - 45
} else {
    totalMin = (input[0]*60) + input[1] - 45
}

var hour = totalMin / 60
let min = totalMin % 60

if hour == 24 {
    hour = 0
}

print("\(hour) \(min)")