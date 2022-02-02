//
//  协议.swift
//  swift_study
//
//  Created by 昊轩 on 2022/2/1.
//

// 协议定义属性必须用var
protocol AnimalProtol {
    init()
    var name:String {get set}
    mutating func sayName() -> Void
    func test() -> Self
}

class Animal : AnimalProtol {
    required init() {}
    var name: String = "name"
    func sayName() {
        print(self.name)
    }
    func test() -> Self {
        type(of: self).init()
    }
}

var animal = Animal()
animal.sayName()
var ptype = type(of: animal)
print(ptype.self == ptype)
print(animal.test())


//name
//true
//swift_study.Animal
