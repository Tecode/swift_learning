//
//  属性观察器.swift
//  swift_study
//
//  Created by 昊轩 on 2022/1/11.
//

import Foundation

struct DriverCar {
    init () {
        print("初始化...")
//        里面是不会触发的
        self.speed = 10
    }
    var speed: Int {
        willSet {
            print("设置的新值", newValue)
        }
        didSet {
            print("之前的旧值", oldValue)
        }
    }
}

var d = DriverCar()
d.speed = 30

//初始化...
//设置的新值 30
//之前的旧值 10
