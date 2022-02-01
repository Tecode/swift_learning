//
//  可选链.swift
//  swift_study
//
//  Created by 昊轩 on 2022/2/1.
//

class Teacher {var name: String = "Mir Li"}

class Person {
    var name: String = "haoxuan"
    var idCard: String?
    var teacher: Teacher? = Teacher()
    func outPut() -> Int { 18 }
    subscript(index: Int) -> Int { index }
}

var person: Person? = Person()
print(person!.name)
print(person?.outPut())
person?.idCard = "450993434X"
print(person?.idCard)

//haoxuan
//Optional(18)
//Optional("450993434X")
