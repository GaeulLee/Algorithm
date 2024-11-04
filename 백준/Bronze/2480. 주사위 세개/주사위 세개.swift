import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }

let a = input[0]
let b = input[1]
let c = input[2]

if a == b && b == c {
    print(10000+(a*1000))
} else if (a == b && b != c) {
    print(1000+(a*100))
} else if (b == c && c != a) {
    print(1000+(b*100))
} else if (a == c && c != b) {
    print(1000+(a*100))
} else if a != b && b != c && c != a {
    print(input.max()!*100)
}