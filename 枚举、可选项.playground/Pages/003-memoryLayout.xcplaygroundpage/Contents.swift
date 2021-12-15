var name = "10"

MemoryLayout<Int>.size       // 8
MemoryLayout<Int>.stride     // 8
MemoryLayout<String>.size    // 16
// 内存对齐
MemoryLayout<Int>.alignment  // 8

MemoryLayout.size(ofValue: name)

enum Password {
    case number(Int,Int,Int,Int) // 关联值 32
    case other // 1
}

var pwd = Password.number(2,2,4,5)
pwd = .other

MemoryLayout.size(ofValue: pwd) // 33 实际占用的内存
MemoryLayout.stride(ofValue: pwd) // 40 分配的内存大小
MemoryLayout.alignment(ofValue: pwd) // 8 内存对齐
