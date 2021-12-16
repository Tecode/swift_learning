//
//  main.swift
//  swift_study
//
//  Created by 昊轩 on 2021/12/16.
//

enum SwitchEnum {
    case value1,value2,value3
}

var value = SwitchEnum.value3

switch value {
case .value1:
    print("value1")
case .value2:
    print("value2")
case .value3:
    print("value3")
}

// si ni 汇编级别的调试
// s n 源码级别的调试

func test() {
    var a: Int
    a = 3
    print(a)
}

test()

enum TestMemory002 {
    case value1(Int, Int, Int)
    case value2(Int,Int)
    case value3(Int)
    case value4(Bool)
    case value5
}

var b = TestMemory002.value1(10, 20, 30)

/**
 0x100001444 <+656>: mov    w9, #0x2
->  0x100001448 <+660>: str    x9, [x10, #0x228]
 0x10000144c <+664>: str    x9, [x8, #0x8]
 0x100001450 <+668>: mov    w9, #0x3
 0x100001454 <+672>: str    x9, [x8, #0x10]
 0x100001458 <+676>: strb   wzr, [x8, #0x18]
 0x10000145c <+680>: mov    w0, #0x0
 */
