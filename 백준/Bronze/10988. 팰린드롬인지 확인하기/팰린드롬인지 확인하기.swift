import Foundation

let a = readLine()

func answer(word: String) -> Int {
    let arr = Array(word)
    let front = 0
    let back = arr.count - 1

    for i in 0...back {
        let f = arr[front + i]
        let b = arr[back - i]
        
        if f != b {
            return 0
        }
    }
    
    return 1
}

print(answer(word: a!))