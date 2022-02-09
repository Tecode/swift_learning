//
//  逃逸闭包、非逃逸闭包.swift
//  swift_study
//
//  Created by 昊轩 on 2022/2/9.
//

typealias Fn = () ->()

// 逃逸闭包
class Human {
    var fn: Fn
    init(fn: @escaping Fn) {
        self.fn = fn
    }
}

// 非逃逸闭包
var hunman: Fn = {print("OK")}
func notEscaping() {
    hunman()
}

notEscaping()
