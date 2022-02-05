//
//  扩展.swift
//  swift_study
//
//  Created by 昊轩 on 2022/2/5.
//

extension Double {
    var km: Double { self / 1000}
    var m: Double { self }
    var cm: Double { self * 100 }
}

var distence: Double = 20.0
print(distence.cm) //2000.0
print(distence.km) //0.02

// 扩展协议
extension BinaryInteger {
    func isOdd() -> Bool { self % 2 == 0}
}

print(3.isOdd())
print(4.isOdd())
//false
//true
