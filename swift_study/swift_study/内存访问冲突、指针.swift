//
//  内存访问冲突、指针.swift
//  swift_study
//
//  Created by 昊轩 on 2022/3/2.
//

// 内存访问冲突
var step = 1;
func run(_ value: inout Int) {
    step += value
}

run(4)
