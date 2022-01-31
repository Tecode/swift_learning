//
//  继承.swift
//  swift_study
//
//  Created by 昊轩 on 2022/1/30.
//


// 没有任何类继承的类就是基类
class Animal {
    func say() {
        print("动物")
    }
    class func name() {
        print("动物2号")
    }
    static func rename() {
        print("动物3号")
    }
}

class Cat:Animal {
    override func say() {
//        调用父类方法
        super.say()
        print("小猫")
    }
}

var cat = Cat()
cat.say()
//动物
//小猫

// 类方法可以被重写，static方法不能被重写
class Dog:Animal {
    override class func name() {
        print("小狗")
    }
//    override static func rename() {
//        print("小狗2")
//    }
}

Animal.name()
Animal.rename()
Dog.name()
Dog.rename()

//动物3号
//小狗
//动物3号
