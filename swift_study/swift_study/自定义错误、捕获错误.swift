//
//  自定义错误、捕获错误.swift
//  swift_study
//
//  Created by 昊轩 on 2022/2/2.
//

// 定义错误，可以是枚举、结构体、类
enum ErrorMesage: Error {
    case parameterError(msg: String)
    case outOfMemery(_ a: Int, _ b :Int)
}

func caculater(value001: Int, value002: Int) throws -> Int {
    if value002 == 0 {
        throw ErrorMesage.parameterError(msg: "0不能是除数")
    }
    return value001/value002
}

// 使用do catch捕获错误
do {
    print(100)
    print(try caculater(value001: 20, value002: 0))
    print(200)
} catch let ErrorMesage.parameterError(msg) {
    print("参数错误：", msg)
} catch let ErrorMesage.outOfMemery(a, b){
    print("内存溢出", a, b)
} catch {
    print("其它错误")
}
// 参数错误： 0不能是除数

// try? try! 捕获错误
print(try? caculater(value001: 6, value002: 0)) // nil
print(try! caculater(value001: 6, value002: 1)) // 6

// rethrows
func exec(_ fn: (Int, Int)throws -> Int,_ num001: Int,_ num002: Int) rethrows{
//    defer报错也会执行的语句块
    defer {
        print("执行结束")
    }
    print(try fn(num001, num002))
}


do {
    try exec(caculater, 20, 0) // 10
} catch {
    print("捕获到错误")
}

//100
//参数错误： 0不能是除数
//nil
//6
//执行结束
//捕获到错误
