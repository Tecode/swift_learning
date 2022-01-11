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
