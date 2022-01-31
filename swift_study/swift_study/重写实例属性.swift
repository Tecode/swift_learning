//
//  重写属性.swift
//  swift_study
//
//  Created by 昊轩 on 2022/1/31.
//

// 只能重写var属性不能重写let属性
// 重写时属性名、类型必须一样
// 子类属性不能将父类属性重写为存储属性
class Circle {
    var radius: Int {
        get {
            print("获取父类Radios")
            return 4
        }
        set {
            print("设置父类Radios")
            diameter = newValue
        }
    }
    var diameter:Int = 0
}

class SubCrircle:Circle {
    override var radius: Int {
        get {
            print("获取子类Radius")
            return super.radius
        }
        set {
            print("新年快乐")
            super.radius = newValue > 0 ? newValue : 0
        }
    }
}

var circle = SubCrircle()
print(circle.radius)
circle.radius = 112
print(circle.diameter)
circle.radius = -2
print(circle.diameter)

//获取子类Radius
//获取父类Radios
//4
//新年快乐
//设置父类Radios
//112
//新年快乐
//设置父类Radios
//0
