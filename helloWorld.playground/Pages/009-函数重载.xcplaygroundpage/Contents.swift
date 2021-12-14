// 函数名相同
// 参数类型不同、参数个数不同、参数标签不同
func sum (a:Int) {
    print("函数001")
}

func sum (a:Int, b: Int) {
    print("函数002")
}

func sum (a:Int, b: Double) {
    print("函数003")
}

func sum (b:Int, c: Double) {
    print("函数004")
}

sum(a: 2)
sum(a: 3, b: 3)
sum(a: 1, b: 2.0)
sum(b: 1, c: 2.0)

// 内敛函数
// 函数体较长的函数不会内敛，如果开启优化编译器会内敛函数
// 不会内敛的函数
// 递归、动态派发
func text() {
    print("开启优化会内敛")
}
text()
