import Foundation

let mn = readLine()!.split(separator: " ").map{ Int($0)! }
let rows: Int = mn[0]
let lines: Int = mn[1]
var input: [[Character]] = []
var result: Int = 64 // 최대로 다시 칠해야하는 경우

// 입력 2차원 배열로 만들기
for _ in 0..<mn[0] {
    let row: [Character] = Array(readLine()!)
    input.append(row)
}

// 8x8만큼 추린 배열 반환
func getBoard(_ row: Int, _ line: Int) -> [[Character]] {
    var board: [[Character]] = []
    for i in 0..<8 {
        board.append(Array(input[row + i][line..<line+8]))
    }
    return board
}

// wb, bw 방식 중 적게 바꾸는 경우의 수 반환 
func repaintCount(for board: [[Character]]) -> Int {
    var wb: Int = 0
    var bw: Int = 0
    
    for row in 0..<8 {
        for line in 0..<8 {
            if (row + line) % 2 == 0 {
                if board[row][line] == "B" {
                    wb += 1
                } else {
                    bw += 1
                }
            } else {
                if board[row][line] == "W" {
                    wb += 1
                } else {
                    bw += 1
                }
            }
        }
    }
    
    return min(wb, bw)
}

// 모든 체스판이 나올 수 있는 경우의 수를 순회
for row in 0..<(rows-7) {
    for line in 0..<(lines-7) {
        let board: [[Character]] = getBoard(row, line)
        result = min(result, repaintCount(for: board))
    }
}

print(result)