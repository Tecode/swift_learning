//
//  属性、汇编分析inout本质.swift
//  swift_study
//
//  Created by 昊轩 on 2022/1/6.
//

struct Circle {
    var radius: Double
    var diameter: Double {
        set {
            radius = newValue / 2
        }
        get {
            radius * 2
        }
    }
//    只读属性
    var longer: Double { 4.0 }
}

var c = Circle(radius: 20)
var a = c.diameter

// rowValue本质是只读的计算属性
enum Person:Int {
    case haoxuan = 1, ali, elong
    var rawValue: Int {
        switch self {
        case .haoxuan:
            return 20
        case .ali:
            return 40
        case .elong:
            return 100
        }
    }
}

print(Person.elong.rawValue)
// 100

// 取地址赋值，inout本质就是引用传递
// inout总结
// 如果实参有物理地址，且没有设置属性观察器
// 直接将实参的内存地址传入函数（实参进行引用传递）

// 如果实参是计算属性或者设置了属性观察器
// 采用Copy In Copy Out的做法
// ✅调用该函数，先复制实参的值，产生副本「get」
// ✅将副本的内存地址传入函数（副本进行引用传递），在函数内部可以修改副本的值
// ✅函数返回后，再将副本的值覆盖实参的值「set」

struct Shape {
    var width:Int
}
// 取地址赋值
func run (_ a: inout Int) {
    a = 5
}

var s = Shape(width: 3)
run(&s.width)

//s.width
//5
