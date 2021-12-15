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
