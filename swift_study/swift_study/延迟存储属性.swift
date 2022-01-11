//
//  延迟存储属性.swift
//  swift_study
//
//  Created by 昊轩 on 2022/1/11.
//

// 延迟存储属性,lazy定义一个延迟存储属性

class Person {
    lazy var d = DriverCar()
    init(){
        print("初始化Person方法")
    }
    func run() {
        d.run()
    }
}

class DriverCar {
    init(){
        print("初始化开车方法")
    }
    func run() {
        print("车开走了")
    }
}

var p = Person()
p.run()

//初始化Person方法
//初始化开车方法
//车开走了
