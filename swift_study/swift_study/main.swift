//
//  main.swift
//  swift_study
//
//  Created by 昊轩 on 2021/12/16.
//


var name: String? = "haoxuan"
name = nil

switch name {
case let .some(v):
    print(v)
case .none:
    print("nil")
}

// 等价于
var name2: Optional<String> = Optional<String>.some("haoxuan")
name2 = .none
//print(name2!)
