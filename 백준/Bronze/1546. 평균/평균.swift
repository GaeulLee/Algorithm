import Foundation

let exams = Int(readLine()!)!
let scoreArr: [Double] = readLine()!.split(separator: " ").map{ Double($0)! }

var totalScore: Double = 0.0
let maxScore = scoreArr.max()!
for score in scoreArr {
    totalScore += score/maxScore*100.0
}

print(totalScore/Double(exams))