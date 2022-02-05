//
//  溢出运算符.swift
//  swift_study
//
//  Created by 昊轩 on 2022/2/5.
//

var maxNumber = UInt8.max // 255

//maxNumber += 1
// Thread 1: Swift runtime failure: arithmetic overflow
//maxNumber = maxNumber &+ 1 //0
//maxNumber = UInt8.min &- 1 //255
maxNumber = maxNumber &* 2 // 254 255*2 - 256 = 254

print(maxNumber)
