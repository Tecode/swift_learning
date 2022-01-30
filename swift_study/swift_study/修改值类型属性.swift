//
//  修改值类型属性.swift
//  swift_study
//
//  Created by 昊轩 on 2022/1/30.
//

var num1 = 10
var num2 = 11

//->  0x100003510 <+8>:  str    x8, [x9, #0x1d8]
//    0x100003514 <+12>: adrp   x9, 9
//    0x100003518 <+16>: mov    w8, #0xb
//    0x10000351c <+20>: str    x8, [x9, #0x1e0]
//    0x100003520 <+24>: mov    w0, #0x0

class Car {
//    默认lazy,dispatch_one
//    本质就是全局变量，指定了它的访问范围
    static var count = 2
}

Car.count = 8

// 修改值类型，使用mutating
struct Aodi {
    var a = 0.0;
    var b = 0.0;
    mutating func setValue(_ value001: Double, _ value002: Double) ->Void {
        a += value001;
        b += value002;
    }
}

var aodi = Aodi();
aodi.setValue(22.3,10.2)
print(aodi.a)
