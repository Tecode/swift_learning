//
//  范型.swift
//  swift_study
//
//  Created by 昊轩 on 2022/2/2.
//

var a = 10
var b = 20
func swapValue<T>(num1: inout T, num2: inout T) {
    (num1, num2) = (num2, num1)
}

swapValue(num1: &a, num2: &b)
print(a, b)

//20 10

class Stack<E> {
    var arr = [E]()
    
    func push(_ value: E) {
        arr.append(value)
    }
    
    func pop() -> E {
        arr.removeLast()
    }
    
    func size() -> Int {
        arr.count
    }
}

var stack = Stack<Int>()
stack.push(10)
stack.push(30)
print(stack.arr)
print(stack.pop())
print(stack.size())
print(stack.arr)

//[10, 30]
//30
//1
//[10]

