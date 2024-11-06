import Foundation

let input = Int(readLine()!)!
let rp = input/4

var result = ""
for _ in 0..<rp {
    result += "long "
}
print(result + "int")
