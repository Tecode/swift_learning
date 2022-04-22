//
//  字面量协议、模式匹配、条件编译.swift
//  swift_study
//
//  Created by 昊轩 on 2022/4/22.
//

import Foundation

// 常见字面量类型
//public typealias IntegerLiteralType = Int
//public typealias FloatLiteralType = Float
//public typealias DoubleLiteraType = Double
//public typealias BooleanLiteralType = Bool


let name: String = "23"
print(name)

// 字面量协议应用
extension Int : ExpressibleByBooleanLiteral {
    public init(booleanLiteral value: Bool) {
        self = value ? 1 : 0
    }
}

let num: Int = true
print(num) // 1

// 模式匹配 通配符模式
// _ 匹配任何值
// _? 匹配非nil值
enum Life{
    case hunman(name: String, age: Int?)
    case animal(name: String, age: Int?)
}

func switchValue(_ life : Life) {
    switch life {
    case .hunman(let name, _):
        print(name)
    case .animal(let name, _?):
        print(name)
    default:
        print("other")
    }
}

switchValue(Life.hunman(name: "haoxuan", age: nil)) // haoxuan
switchValue(Life.animal(name: "小猫", age: nil)) // other
switchValue(Life.animal(name: "小猫", age: 2)) // 小猫

// 枚举case模式
// 判断是否在某个区间
let numberValue: Int = 5
if case 0...9  = numberValue {
    print("numberValue在0-9的范围")
    // numberValue在0-9的范围
}


// 可选匹配
let count: [Int?] = [2,3,4,nil]
for case let value? in count {
    print(value as Any)
}
//2
//3
//4


// 可选模式
let childCount: Int? = 20
if case .some(let x) = childCount{ print(x) }
//等价于
if case let x? = childCount{ print(x) }
//20
//20

// 自定义表达式匹配，运算符重载
struct Student001 {
// TODO: 未完成
    var score: Int = 20, name = ""
    static func ~= (pattern: Int, value001: Student001) -> Bool { value001.score >= pattern }
    static func ~= (pattern: ClosedRange<Int>, value001: Student001) -> Bool { pattern.contains(value001.score) }
    static func ~= (pattern: Range<Int>, value001: Student001) -> Bool { pattern.contains(value001.score) }
}

let student = Student001(score: 100, name: "haoxuan")

switch student {
//    FIXME: 出错了
case 100: print(">=100", student.name)
case 90: print(">=90")
case 80..<90: print("[80, 90)")
case 60...79: print("[60, 79]")
default:
    break
}
// >=100 haoxuan
// MARK: 工作项列表
print("----Student001")

// MARK: 条件编译
// 条件编译
#if os(macOS)
print("macOS模式")
#endif
