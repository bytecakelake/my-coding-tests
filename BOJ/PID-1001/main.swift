let a: [Int8] = readLine()!.split(separator: " ").map { Int8($0)! }
let b: Int8 = a[0] - a[1]
print(b)