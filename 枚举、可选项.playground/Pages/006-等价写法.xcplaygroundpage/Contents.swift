if let first = Int("4") {
    if let second = Int("24") {
        if first < second {
            print("输出结果")
        }
    }
}
// 等价于
if let first = Int("4"),
    let second = Int("24"),
    first < second {
    print("等价写法")
}
