// 类型转换
import CoreFoundation

let int_1 :UInt16 = 2_000
let int_2 :UInt8 = 30
let int_3 = int_1 + UInt16(int_2)

// 整数、浮点数
let num_1 = 3
let num_2 = 0.1415926
let pi = Double(num_1) + num_2


// 字面量可以直接相加，因为数字没有明确类型
let num_3 =  3 + 0.1415926
