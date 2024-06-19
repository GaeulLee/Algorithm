import Foundation

func solution(_ letter:String) -> String {
    
    let morse: [String: String] = [ ".-": "a", "-...": "b", "-.-.": "c", "-..": "d", ".": "e", "..-.": "f",
                                    "--.": "g", "....": "h", "..": "i", ".---": "j", "-.-": "k", ".-..": "l",
                                    "--": "m", "-.": "n", "---": "o", ".--.": "p", "--.-": "q", ".-.": "r",
                                    "...": "s", "-": "t", "..-": "u", "...-": "v", ".--": "w", "-..-": "x",
                                    "-.--": "y", "--..": "z" ]
    var tempMorse = ""
    var result = ""
    var index = 0
    for char in letter {
        index += 1
        if char != " " {
            tempMorse.append(char)
            if index == letter.count {
                result.append(morse[tempMorse]!)
                break
            }
        } else {
            result.append(morse[tempMorse]!)
            tempMorse = ""
        }
    }
    
    return result
}