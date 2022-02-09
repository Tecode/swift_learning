//
//  访问控制.swift
//  swift_study
//
//  Created by 昊轩 on 2022/2/5.
//

//open：允许在定义实体的模块、其他模块中访问，允许其他模块进行继承、重写（open只能用在类、类成员上）
//public：允许在定义实体的模块、其他模块中访问，不允许其他模块进行继承、重写
//internal：只允许在定义实体的模块中访问，不允许在其他模块中访问
//fileprivate：只允许在定义实体的源文件中访问
//private：只允许在定义实体的封闭声明中访问


//变量\常量类型 ≥ 变量\常量
//参数类型、返回值类型 ≥ 函数
//父类 ≥ 子类
//父协议 ≥ 子协议
//原类型 ≥ typealias
//原始值类型、关联值类型 ≥ 枚举类型
//定义类型A时用到的其他类型 ≥ 类型A

open class Animal001 {
    var name = "monkey"
}

public class Animal002 {
    var name = "monkey"
}

internal class Animal003 {
    var name = "monkey"
}

fileprivate class Animal004 {
    var name = "monkey"
}

private class Animal005 {
    private var name = "monkey"
}

fileprivate var animal: Animal004 = Animal004()
print(animal.name)

// gettter setter
// 可以给setter单独设置一个比getter更低的访问级别，用以限制写的权限
class ValueObject {
    private(set) public var value: String = "haoxuan"
}
var valueObject = ValueObject()
//valueObject.value = "90" // Cannot assign to property: 'value' setter is inaccessible
print(valueObject.value)


// 协议访问控制
// 协议实现的访问级别必须 ≥ 类型的访问级别，或者 ≥ 协议的访问级别
public protocol ControlProtocol {
    func run()
}

// 默认是internal权限
internal class ControlObject: ControlProtocol {
    internal func run() {
        print("协议访问控制")
    }
}

var control = ControlObject()
control.run()
