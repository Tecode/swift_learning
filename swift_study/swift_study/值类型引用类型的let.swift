//
//  值类型引用类型的let.swift
//  swift_study
//
//  Created by 昊轩 on 2021/12/27.
//

// 值类型引用类型的let
// malloc申请用16的倍数
// 方法不分配内存，方法函数存放代码段

class Point{
//    16
    var name = "haoxuan"
    func show() {
        print("名字", name)
    }
}

var point = Point()
point.show()
print(Mems.size(ofRef: point)) // 32

print("方法", Mems.ptr(ofRef: point.show))
print("全局变量", Mems.ptr(ofVal: &point))
print("堆空间", Mems.ptr(ofRef: point))

//方法    0x0000000000000001
//全局变量 0x000000010000c790
//堆空间   0x0000000101049730
