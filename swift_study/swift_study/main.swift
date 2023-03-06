//
//  main.swift
//  swift_study
//
//  Created by 昊轩 on 2021/12/16.
//

import Foundation

var name = "haoxuan"
var list: [Int] = [0, 67]
name.insert("_", at: name.startIndex)

name.insert(contentsOf: "hh", at: name.endIndex)

name.insert("-", at: name.firstIndex(of: "o")!)

name.append(contentsOf: "IOE")
print(name)
// _ha-oxuanhhIOE
print(list)
print("OK")

// 对象存储属性
class Human012 {
    
}

var value = 10

extension Human012 {
    var age: Int {
        get {
            objc_getAssociatedObject(self, &value) as! Int
        }
        set {
            objc_setAssociatedObject(self, &value, newValue, .OBJC_ASSOCIATION_ASSIGN)
        }
    }
}

var human = Human012()
human.age = 20
print(human.age)
// 20
