//
//  下标.swift
//  swift_study
//
//  Created by 昊轩 on 2022/1/30.
//

// subscript
// 值类型需要加set方法，引用类型不需要加
import Foundation
class Point {
    var x = 0.0;
    var y = 0.0;
    subscript(index:Int) -> Double {
        set {
            if index == 0 {
                x = newValue
            }
            y = newValue
        }
        get {
            if index == 0 {
                return x
            }
            return y
        }
    }
}

var point = Point();
point[0] = 6
print(point[0])
point[1] = 8
print(point.y)
print(point[1])

//6.0
//8.0
//8.0
