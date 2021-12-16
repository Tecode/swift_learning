//
//  main.swift
//  swift_study
//
//  Created by 昊轩 on 2021/12/16.
//

enum TestMemory: Int {
    case value1 = 1, value2, value3, value4
}

var value = TestMemory.value1
value = .value2
value = .value3
print(Mems.ptr(ofVal: &value))
print(value)

print(MemoryLayout<TestMemory>.size)
print(MemoryLayout<TestMemory>.stride)
print(MemoryLayout<TestMemory>.alignment)

enum TestMemory002 {
    case value1(Int, Int, Int)
    case value2(Int,Int)
    case value3(Int)
    case value4(Bool)
    case value5
}
// 1字节存储成员值
// N字节存储关联值（N取占用内存最大的关联值），任何一个case的关联值共用N个字节
// 共用体
print(Mems.ptr(ofVal: &value001))
var value001 = TestMemory002.value1(1,2,3)
// 小端：高高低低
// 00 00 00 00 00 00 00 01
// 00 00 00 00 00 00 00 02
// 00 00 00 00 00 00 00 03
// 00
// 00 00 00 00 00 00 00
value001 = .value2(4,5)
print(Mems.memStr(ofVal: &value001))
// 0x0000000000000004 0x0000000000000005 0x0000000000000000 0x0000000000000001
// 04 00 00 00 00 00 00 00
// 05 00 00 00 00 00 00 00
// 00 00 00 00 00 00 00 00
// 01
// 00 00 00 00 00 00 00
value001 = .value3(6)
// 06 00 00 00 00 00 00 00
// 00 00 00 00 00 00 00 00
// 00 00 00 00 00 00 00 00
// 02
// 00 00 00 00 00 00
value001 = .value4(true)
// 01 00 00 00 00 00 00 00
// 00 00 00 00 00 00 00 00
// 00 00 00 00 00 00 00 00
// 03
// 00 00 00 00 00 00 00
value001 = .value5
// 00 00 00 00 00 00 00 00
// 00 00 00 00 00 00 00 00
// 00 00 00 00 00 00 00 00
// 04
// 00 00 00 00 00 00 00

print(MemoryLayout<TestMemory002>.size)
print(MemoryLayout<TestMemory002>.stride)
print(MemoryLayout<TestMemory002>.alignment)
