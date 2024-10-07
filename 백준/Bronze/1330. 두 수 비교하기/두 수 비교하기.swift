import Foundation

let inputArr = readLine()!.components(separatedBy: " ")
let a = Int(inputArr[0])!
let b = Int(inputArr[1])!

func compare(_ a: Int, _ b: Int) {
    if a > b {
        print(">")
    } else if a < b {
        print("<")
    } else {
        print("==")
    }
}

compare(a, b)