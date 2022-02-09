//
//  内存管理.swift
//  swift_study
//
//  Created by 昊轩 on 2022/2/5.
//

class Animal {
    deinit {
        print("销毁--Animal")
    }
}

print("1")
// 弱引用（weak reference）：通过weak定义弱引用
// 必须是可选类型的var，因为实例销毁后，ARC会自动将弱引用设置为nil
// weak、unowned 都能解决循环引用的问题，unowned 要比 weak 少一些性能消耗
func animal() {
   weak var a = Animal()
}
animal()
print("2")

// 闭包的循环引用
class Person {
    var fn: (() -> ())?
    func run() {
        print("run")
    }
    deinit {
        print("Person.deinit")
    }
}

//闭包表达式默认会对用到的外层对象产生额外的强引用（对外层对象进行了retain操作）
//n 下面代码会产生循环引用，导致Person对象无法释放（看不到Person的deinit被调用）

func test() {
    var p = Person()
    p.fn = {
        [weak p] in p?.run()
    }
}

test()


// 如果想在定义闭包属性的同时引用self，这个闭包必须是lazy的（因为在实例初始化完毕之后才能引用self）
// 如果lazy属性是闭包调用的结果，那么不用考虑循环引用的问题（因为闭包调用后，闭包的生命周期就结束了）
class Human {
//    lazy var fn: (() ->()) = {
//        self.run()
//    }
    
//    释放内存
    lazy var fn: (() ->()) = {
        [weak h = self] in h?.run()
    }
    
    func run() {
        print("run")
    }
    deinit {
        print("Human.deinit")
    }
}

//func hunmanFn() {
//    var hunman = Human()
//}

func hunmanFn() {
    var hunman = Human()
//    调用以后无法释放内存
    hunman.fn()
}
// 没有调用lazy方法是可以释放内存的，只有调用的时候才会产生强引用
// Human.deinit
hunmanFn()
