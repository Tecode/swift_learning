//
//  main.swift
//  swift_study
//
//  Created by 昊轩 on 2021/12/16.
//

// 引用地址赋值操作
class Size {
    var width = 20
    var height = 30
    init (_ width:Int = 5, _ height: Int = 10) {
        self.width = width
        self.height = height
    }
}

var size = Size(10, 20)

print(size.height) // 20
print(size.width) // 10

size.width = 66
print(size.height) // 20
print(size.width) // 66
