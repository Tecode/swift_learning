// 定义变量
func sum(a: Int, b: Int) -> Int {
    a + b
}
// 函数类型
var fn: (Int, Int) -> Int = sum
fn(2,3)

// 函数类型作为函数返回值
func difference(v1: Int, v2: Int) -> Int {
    v1 - v2
}

func printResult(_ mathFun:(Int, Int) -> Int, _ a: Int,_ b: Int) {
    print("Result: \(mathFun(a,b))")
}

printResult(sum, 5, 2)
printResult(difference, 5, 2)

// 高阶函数
// 函数作为返回值,类似闭包,返回的数据类型是一个函数
func next(_ a: Int) -> Int {
    a + 1
}

func previdor(_ a: Int) -> Int {
    a - 1
}

func forward(value: Bool) -> (Int) -> Int {
    value ? next : previdor
}

forward(value: false)(5)
forward(value: true)(5)
