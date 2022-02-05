//
//  运算符重载.swift
//  swift_study
//
//  Created by 昊轩 on 2022/2/5.
//

// 运算符重载
struct Point {
    var x = 0, y = 0
    static func + (p1: Point, p2: Point) -> Point {
        Point(x: p1.x + p2.x, y: p1.y + p2.y)
    }
    // prefix 前缀运算符重载
    static prefix func ++ (p: Point) -> Point {
        Point(x: p.x + p.x, y: p.y + p.y)
    }
    static func +=(p1:inout Point, p2: Point) {
        p1 = p1 + p2
    }
    // 后缀运算符重载
    static postfix func ++(p: inout Point) -> Point {
        let tem = p
        p += Point(x: 1, y: 1)
        return tem
    }
}

var p1 = Point(x: 10, y: 20)
var p2 = Point(x: 5, y: 10)
var p3 = Point(x: 30, y: 20)

print(p1, p2, p3)
print(p1 + p2 + p3) // Point(x: 45, y: 50)
print(++p1 + p2) // Point(x: 25, y: 50)
