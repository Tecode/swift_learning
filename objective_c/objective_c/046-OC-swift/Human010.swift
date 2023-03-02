//
//  Human010.swift
//  objective_c
//
//  Created by 昊轩 on 2023/3/2.
//

import Foundation

@objcMembers class Human010 :NSObject {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.age = age
        self.name = name
    }
    
    func run() {
        print("来自swift方法：", name, age, separator: ":")
    }
}
