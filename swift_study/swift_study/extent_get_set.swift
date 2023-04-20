//
//  extent_get_set.swift
//  swift_study
//
//  Created by 昊轩 on 2023/3/7.
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
    private static var WEIGHT_KEY: Bool = false // 1个字节，为了节省内存
    private static var AGE_KEY: Void? // 1个字节
    
    var age: Int {
        get {
            objc_getAssociatedObject(self, &value) as! Int
        }
        set {
            objc_setAssociatedObject(self, &value, newValue, .OBJC_ASSOCIATION_ASSIGN)
        }
    }
    
    var weight: Int {
        get {
            objc_getAssociatedObject(self, &Self.WEIGHT_KEY) as! Int
        }
        set {
            objc_setAssociatedObject(self, &Self.WEIGHT_KEY, newValue, .OBJC_ASSOCIATION_ASSIGN)
        }
    }
}

var human = Human012()
human.age = 20
human.weight = 65
print(human.age)
print(human.weight)
// 20

//_ha-oxuanhhIOE
//[0, 67]
//OK
//20
//65
