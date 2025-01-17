func solution(_ s:String) -> String {
    let arr: [Int] = s.split(separator: " ").map{ Int($0)! }
    return "\(arr.min()!) \(arr.max()!)"
}