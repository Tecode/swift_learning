//
//  类型约束.swift
//  swift_study
//
//  Created by 昊轩 on 2022/2/2.
//

protocol Stackable {
//    关联类型
    associatedtype Element : Equatable
}

class Stack<E: Equatable> : Stackable {
    typealias Element = E
}

func equal<Stack1: Stackable, Stack2: Stackable>(_ stack001: Stack1, _ stack002: Stack2) -> Bool
where Stack1.Element == Stack2.Element, Stack1.Element: Hashable {
        return false
    }


var stack1 = Stack<Int>()
var stack2 = Stack<Int>()
var stack3 = Stack<String>()

print(equal(stack1, stack2))


// 注意事项
protocol Runnable {
    associatedtype Speed
    var speed: Speed { get }
}


class Car : Runnable {
    var speed: Double { 0.0 }
}

class Human : Runnable {
    var speed: Int { 0 }
}

func get() -> some Runnable {
    return Car()
}

var value1 = get()
print(value1.speed)
