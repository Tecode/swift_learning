//
//  闭包表达式.swift
//  swift_study
//
//  Created by 昊轩 on 2021/12/28.
//

// 闭包表达式的简写

func calculateSum(value001: Int, value002: Int, fn: (Int, Int) -> Int) {
    print(fn(value001,value002))
}


calculateSum(value001: 2, value002: 4, fn: {
(value001: Int, value002: Int) -> Int in return value001 + value002
})

calculateSum(value001: 5, value002: 4, fn: {
    value001, value002 in return value001 + value002
})

calculateSum(value001: 2, value002: 4, fn: {
    value001, value002 in value001 + value002
})


calculateSum(value001: 3, value002: 4, fn: {$0 + $1})
calculateSum(value001: 4, value002: 4, fn: +)
 
// 数组排序
var arr = [20, 5, 6, 9, 1]

print("变量所占用的内存大小", Mems.size(ofVal: &arr)) // 8
print("引用所指向内存的大小", Mems.size(ofRef: arr)) // 80
print(Mems.ptr(ofVal: &arr))
print(Mems.ptr(ofRef: arr))

arr.sort()
print(arr)
arr.sort(by: {$0 > $1})
print(arr)

// 函数闭包
// 可以想象成是一个类的实例对象
typealias FnType = (Int) -> Int

func functoin001() -> FnType {
    var count = 0
    func function002(_ value: Int) -> Int {
        count += value
        return count
    }
    return function002
}

let fn = functoin001()
print(fn(1))
print(fn(2))
print(fn(3))
