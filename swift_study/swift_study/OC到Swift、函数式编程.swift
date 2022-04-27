//
//  OC到Swift、函数式编程.swift
//  swift_study
//
//  Created by 昊轩 on 2022/4/22.
//

import Foundation

// swift使用的类型转换为OC使用的类型
var name: String = "name"
var name001: NSMutableString = NSMutableString(string: name)
print(name001)

// 继承NS类型数据格式会发生变化
class Hunman003 {
    var name = ""
    var age: Int = 0
}

let human = Hunman003()
print(Mems.memStr(ofRef: human))
