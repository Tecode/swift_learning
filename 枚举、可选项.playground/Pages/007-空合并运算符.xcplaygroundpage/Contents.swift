// ?? name是nil就返回后面的值
// 如果a不为nil,就返回a
var name: String?
name = "jiejie"
let a = name ?? "haoxuan"

print(a) // jiejie


var a2: Int? = 1
var a3: Int? = 4
let c = a2 ?? a3
print(c) // Optional(1)


let a4: Int? = 10
let a5: Int = 3
let d = a4 ?? a5
print(d) // 10


// ?? 跟if let 配合使用
let a6: Int? = nil
let b3: Int? = 20

// 类似 if a != nil && b != nil
if let c = a6 ?? b3 {
    print(c)
}

// 类似 if a != nil && b != nil
if let c = a6, let c2 = b3 {
    print(c)
    print(c2)
}
