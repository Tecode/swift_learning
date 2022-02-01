//
//  require、deinit、可失败初始化器.swift
//  swift_study
//
//  Created by 昊轩 on 2022/2/1.
//

class Person {
    var name: String
    required init(name: String) {
        self.name = name
    }
    
    deinit {
        print("销毁父类方法")
    }
}

class Student : Person {
    var age: Int
    required init(name: String) {
        self.age = 0
        super.init(name: name)
        print("重写父类init方法")
    }
    
    init?(age: Int) {
        if age < 0 {
            return nil
        }
        self.age = 20
        super.init(name: "可失败初始化器")
    }
    
    deinit {
        print("销毁子类方法")
    }
}

var person = Person(name: "名字")
print(person.name)
var student = Student(name: "学生")
print(student.name)
func test() {
    let student002 = Student(age: 3)
    print(student002)
}

test()
//名字
//重写父类init方法
//学生
//Optional(swift_study.Student)
//销毁子类方法
//销毁父类方法

