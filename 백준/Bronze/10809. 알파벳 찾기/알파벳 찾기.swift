import Foundation

let input = Array(readLine()!)
var alphabet: [Character] = [ "a", "b", "c", "d", "e", "f", "g",
                             "h", "i", "j", "k", "l", "m", "n", "o",
                             "p", "q", "r", "s", "t", "u", "v",
                             "w", "x", "y", "z" ]
var result = ""

for inputI in 0..<input.count {
    for alphaI in 0..<alphabet.count {
        if input[inputI] == alphabet[alphaI] {
            alphabet[alphaI] = Character(String(inputI))
        }
    }
}

for char in alphabet {
    if let num = Int(String(char)) {
        result += "\(char) "
    } else {
        result += "-1 "
    }
}

print(result)