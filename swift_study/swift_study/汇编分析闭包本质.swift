//
//  汇编分析闭包本质.swift
//  swift_study
//
//  Created by 昊轩 on 2022/1/5.
//

import Foundation

// 自动闭包
// @autoclosure只支持() -> T
func maxNumber(_ v1:Int, _ v2: @autoclosure () -> Int) -> Int {
    return v1 > 0 ? v1 : v2()
}

//print(maxNumber(2, {
//    let a = 30
//    let b = 10
//    return a + b
//}))
//
//print(maxNumber(-2, {20}))
print(maxNumber(-2, 20))
