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
