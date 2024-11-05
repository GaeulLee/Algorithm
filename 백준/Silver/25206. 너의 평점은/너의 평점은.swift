import Foundation

internal class Report {
    let subject: String
    let credit: Double
    let grade: String

    init(subject: String, credit: Double, grade: String) {
        self.subject = subject
        self.credit = credit
        self.grade = grade
    }
}

var reportArr: [Report] = []
for _ in 0..<20 {
    let input = readLine()!.split(separator: " ").map{ $0 }
    let report: Report = Report(subject: String(input[0]),
                                credit: Double(input[1])!,
                                grade: String(input[2]))
    reportArr.append(report)
}

var totalScore: Double = 0.0
var totalCredit: Double = 0.0
for report in reportArr {
    if report.grade == "P" {
        continue
    }
    
    var gradeScore: Double = 0.0
    switch report.grade {
        case "A+":
        gradeScore = 4.5
        case "A0":
        gradeScore = 4.0
        case "B+":
        gradeScore = 3.5
        case "B0":
        gradeScore = 3.0
        case "C+":
        gradeScore = 2.5
        case "C0":
        gradeScore = 2.0
        case "D+":
        gradeScore = 1.5
        case "D0":
        gradeScore = 1.0
        default:
        gradeScore = 0.0
    }
    totalScore += (report.credit*gradeScore)
    totalCredit += report.credit
}
print(totalScore/totalCredit)