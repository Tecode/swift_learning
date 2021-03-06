//
//  内存访问冲突、指针.swift
//  swift_study
//
//  Created by 昊轩 on 2022/3/2.
//

import Foundation


// 内存访问冲突
var step = 1;
func run(_ value: inout Int) {
    step += value
}

//run(&step)
// 运行报错
// Thread 1: Simultaneous accesses to 0x10000c1e8, but modification requires exclusive access


// 指针
// 带范型不能修改的指针
var num = 100;
func poiner001(_ str: UnsafePointer<Int>) {
    print("poiner001 指针的值：",str.pointee)
}

// 带范型可以修改的指针
func poiner002(_ str: UnsafeMutablePointer<Int>) {
    str.pointee = 425
    print("poiner002 指针的值：",str.pointee)
}

// 自定义类型型不能修改的指针
func poiner003(_ str: UnsafeRawPointer) {
    print("poiner003 指针的值：",str.load(as: Int.self))
}

// 自定义类型型可以修改的指针
func poiner004(_ str: UnsafeMutableRawPointer) {
    str.storeBytes(of: 500, as: Int.self)
    print("poiner004 指针的值：",str.load(as: Int.self))
}

poiner001(&num)
poiner002(&num)
poiner003(&num)
poiner004(&num)

//poiner001 指针的值： 100
//poiner002 指针的值： 425
//poiner003 指针的值： 425
//poiner004 指针的值： 500


// 指针的应用示例
var arrList = NSArray(objects: 10, 34, 54, 66, 99)

// 使用指针中断循环类似break OC写法
arrList.enumerateObjects {(data, index, stop) in
    print("OC", data, index)
    if index == 3 {
        stop.pointee = true
    }
}

//OC 10 0
//OC 34 1
//OC 54 2
//OC 66 3

// Swift遍历
for (data, index) in arrList.enumerated() {
    print("Swift:", data, index)
}

//Swift: 0 10
//Swift: 1 34
//Swift: 2 54
//Swift: 3 66
//Swift: 4 99

// 获取指针的应用，声明一个指针
var value001 = "haoxuan"
// 声明一个指针变量
var pointerValue001 = withUnsafePointer(to: &value001, {(pointer) -> UnsafePointer<String> in return pointer})
// 简写
var pointerValue002 = withUnsafePointer(to: &value001, {$0})
print(pointerValue001)
print(pointerValue002)

//0x000000010000c2e0
//0x000000010000c2e0

// 获取一个自定义类型型不能修改的指针
var pointerValue003 = withUnsafePointer(to: &value001, {UnsafeRawPointer($0)})
print(pointerValue003.load(as: String.self))

// 获取指向堆空间的地址值
class Person {}

var persion = Person()
var pointerPerson = withUnsafePointer(to: &persion, {UnsafeRawPointer($0)})
var ptr = UnsafeRawPointer(bitPattern: pointerPerson.load(as: UInt.self))
print(ptr!)

// 创建一个指针
var createPointer = malloc(16)
print(createPointer!)
// 0x000000010514bca0
