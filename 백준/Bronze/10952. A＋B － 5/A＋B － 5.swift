import Foundation

var flag: Bool = true

while flag {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    if input[0] == 0, input[1] == 0 {
        flag = false
    } else {
        print(input[0]+input[1])
    }
}