import Foundation

let lines = Int(readLine()!)!
var stack: [Int] = []

for _ in 0..<lines {
    let order: [Int] = readLine()!.split(separator: " ").map{ Int($0)! }
    
    if order.count == 2 { // 명령 1
        stack.append(order[1])
    } else {
        switch order[0] {
            case 2:
                if stack.count == 0 {
                    print(-1)
                } else {
                    print(stack[stack.count-1])
                    stack.removeLast()
                }
            case 3:
                print(stack.count)
            case 4:
                if stack.count == 0 {
                    print(1)
                } else {
                    print(0)
                }
            case 5:
                if stack.count == 0 {
                    print(-1)
                } else {
                    print(stack[stack.count-1])
                }
            
            default:
                print("error")
        }
    }
}