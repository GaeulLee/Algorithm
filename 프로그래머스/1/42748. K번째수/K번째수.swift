import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result: [Int] = []
    
    for x in 0..<commands.count {
        let i = commands[x][0]
        let j = commands[x][1]
        let k = commands[x][2]

        var cutArr: [Int] = []
        for z in i-1..<j {
            cutArr.append(array[z])
        }
        cutArr.sort()
        result.append(cutArr[k-1])
    }
    
    return result
}