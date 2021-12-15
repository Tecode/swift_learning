// 永远不会被内敛，即使开启编译器优化
@inline(never) func text() -> Void {
    print("不会被内敛")
}

// 开启编译器优化后，即使代码很长也会被内敛（递归函数、动态派发的函数除外）
@inline(__always) func inline() -> Void {
    print("开启优化会被内敛")
}


text()
inline()
