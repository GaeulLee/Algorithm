import Foundation

let input = Int(readLine()!)!

for line in 0..<input {
    var str = ""
    for _ in 0..<input-(line+1) {
        str += " "
    }
    for _ in 0..<2*(line+1)-1 {
        str += "*"
    }
    print(str)
}

for line in stride(from: input-2, through: 0, by: -1) {
    var str = ""
    if line < input {
        for _ in 0..<input-(line+1) {
            str += " "
        }
        for _ in 0..<2*(line+1)-1 {
            str += "*"
        }
    }
    print(str)
}