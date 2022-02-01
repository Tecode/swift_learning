//
//  初始化器.swift
//  swift_study
//
//  Created by 昊轩 on 2022/2/1.
//

class Person {
    var age: Int = 0
    init(age: Int) {
        self.age = age
    }
    convenience init() {
        self.init(age: 18)
    }
}

class Student : Person {
    var name:String
    init(age: Int, name: String) {
        self.name = name
        super.init(age: 0)
        self.age = age
    }
}

var person = Person()
print(person.age)
var student = Student(age: 22, name: "haoxuan")
print(student.name, student.age)
// 自动继承
var person002 = Person(age: 10)
print(person002.age)
