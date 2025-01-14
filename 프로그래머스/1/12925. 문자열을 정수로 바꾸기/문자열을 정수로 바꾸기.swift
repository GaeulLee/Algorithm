func solution(_ s:String) -> Int {
    if let num = Int(s) {
        return num
    } else {
        let arr: [String] = s.split(separator: "-").map{ String($0) }
        return (Int(arr[1])! * -1)
    }
}