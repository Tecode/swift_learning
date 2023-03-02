//
//  main.swift
//  swift_oc
//
//  Created by 昊轩 on 2022/4/28.
//

// swift自带一个sum方法，和OC内部的方法重名会使用swift中的sum方法
func sum(_ a:Int, _ b:Int) {
    print(a - b)
    print("来自swift")
}

import Foundation

print("Hello, World!")
var human = ObjectiveHuman()
human.age = 24
human.name = "haoxuan"
human.run()

// 解决函数sum重名，修改C语言函数名
@_silgen_name("sum")
func swift_sum(_ v1: Int32, _ v2: Int32) -> Int32

sum(10, 20)
print(swift_sum(10, 20))
