//
//  值类型的赋值操作.swift
//  swift_study
//
//  Created by 昊轩 on 2021/12/27.
//


// 类型赋值操作
// Swift标准库 String、Array、Dictionary、Set Copy on Write
var value001 = "haoxuan"
var value002 = value001
print(value001 == value002) // true

value002.append(contentsOf: "_jiejie")
print(value001 == value002) // false
print(value002) // haoxuan_jiejie

var value003 = [6, 8, 9]
var value004 = value003
value003.append(10)
print(value003) // [6, 8, 9, 10]
print(value004) // [6, 8, 9]

// 字典
let dictionary001 = ["name": "haoxuan", "age": "18"]
var dictionary002 = dictionary001
dictionary002["other"] = "allow"
print(dictionary001) // ["name": "haoxuan", "age": "18"]
print(dictionary002) // ["name": "haoxuan", "other": "allow", "age": "18"]
