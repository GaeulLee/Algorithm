import Foundation

func solution(_ rsp:String) -> String {
    
    var result = ""
    
    for letter in rsp {
        switch letter {
            case "0":
            result.append("5")
            case "2":
            result.append("0")
            case "5":
            result.append("2")
            default:
            print("error")
        }
    }

    return result
}