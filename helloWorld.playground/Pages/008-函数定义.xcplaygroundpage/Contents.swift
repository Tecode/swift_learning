func pi () -> Double {
    return 3.14
}

func sum (x: Int, y: Int)-> Int {
    return x+y
}

// 无返回值
func sayHello() {
    print("hello")
}

// 隐式返回
func sum2 (x: Int, y: Int)-> Int {
    x+y
}

/// 返回元组
///
/// 求和求平均数
///
///  - Returns a: 第一个参数
///  - Returns b: 第二个参数
///
func array(a: Int, b: Int) -> (sum: Int, avg: Int) {
    let sum3 = a + b
    return (sum3, sum3 >> 1)
}

// 参数标签
func getToWork(at time: String) {
    print("this time is \(time)")
}

// 省略参数标签
func array2(_ a: Int, _ b: Int) -> (sum: Int, avg: Int) {
    let sum3 = a + b
    return (sum3, sum3 >> 1)
}

// 参数默认值
func defaultValue(a: Int = 2, b: String = "haoxuan", c: Double = 3.4) {
    print("\(b)-\(a)-\(c)")
}

// 可变参数
func dynamicParams(_ numbers: Int..., name: String = "default", _ other: String) {
    print("\(numbers)<<\(name)<<\(other)")
}

// 函数内部修改值
var number1 = 10
func add(_ value: inout Int) {
    value = 20
}
add(&number1)
print("number1 &=\(number1)")

pi()
sum(x:1, y: 3)
sayHello()
sum2(x: 2,y: 10)
array(a: 20, b: 30)
getToWork(at: "20:00")
array2(1,3)
defaultValue()
defaultValue(b:"姐姐")
dynamicParams(12,23,34,name: "haoxuan", "JIEJIE")


