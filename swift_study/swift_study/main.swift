//
//  main.swift
//  swift_study
//
//  Created by 昊轩 on 2021/12/16.
//

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
