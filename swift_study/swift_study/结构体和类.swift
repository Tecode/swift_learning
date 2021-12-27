//
//  structure_class.swift
//  swift_study
//
//  Created by 昊轩 on 2021/12/27.
//


// 指针类型8
class Point{
    var a : Int?
    var b : Int?
    init(){
        a = 4
        b = 6
    }
}

var point = Point()
print(point.a!)
print(MemoryLayout.stride(ofValue: point)) // 8
print(MemoryLayout.size(ofValue: point))   // 8

// 值类型8x2=16
struct Point002 {
    var a: Int = 1
    var b: Int = 2
}

var point002 = Point002()
print(MemoryLayout.stride(ofValue: point002)) // 16
print(MemoryLayout.size(ofValue: point002))   // 16

print("point变量地址",Mems.ptr(ofVal: &point))
print("point内存地址",Mems.memStr(ofVal: &point))
print("--------------------")
print("point002变量地址",Mems.ptr(ofVal: &point002))
print("point002变量地址",Mems.memStr(ofVal: &point002))

//point变量地址 0x000000010000c970
//point内存地址 0x000000010063bee0
//--------------------
//point002变量地址 0x000000010000c978
//point002变量地址 0x0000000000000001 0x0000000000000002

class Point003{
    var a : String?
    var b : String?
    var c : Int?
    init(){
        a = "haoxuan"
    }
}

// 指针类型
var point003 = Point003()
print(MemoryLayout.stride(ofValue: point003)) // 8
print(MemoryLayout.size(ofValue: point003))   // 8

print("point003引用类型占用内存",Mems.size(ofRef: point003))
print("point引用类型占用内存",Mems.size(ofRef: point))
// point003引用类型占用内存 64
// point引用类型占用内存 48
// 结构体和类都可以定义方法
// 结构体是值类型（枚举也是值类型），类是引用类型（指针类型）
