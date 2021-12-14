// ...闭区间运算符
let names = ["haouxan","jiejie","baobao"]
for index in 0...2 {
    print(names[index])
}

// 半开区间运算符
for index in 0..<2 {
    print(names[index])
}

// 数组闭区间
for index in names[0...1] {
    print(index)
}

// 单侧区间
for index in names[1...] {
    print(index)
}

// 区间类型
let range1: ClosedRange<Int> = 1...4
let range2: Range<Int> = 1..<4
let range3: PartialRangeThrough<Int> = ...6

let range4: ClosedRange = "cc"..."ff"
range4.contains("dd")

// 带间隔的区间值
let hour = 11
let interval = 2

for value in stride(from: 2, through: hour, by:interval) {
    print(value)
}

