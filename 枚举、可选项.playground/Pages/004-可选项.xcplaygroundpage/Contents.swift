var str: String? = "haoxuan"
str = nil


var age: String?

// 函数参数返回可选项
func getValue(value: Int) -> Int? {
    if (value > 0) {
        return value
    }
    return nil
}

getValue(value: 2)
getValue(value: -1)


// 判断可选项是否包含值
let value = Int("123")
if value != nil {
    print("字符串转整数成功\(value!)")
} else {
    print("字符串转整数失败")
}

// 可选项绑定
if let value = Int("134") {
//    value的作用域只在这个大括号
    print("字符串转整数成功\(value)")
} else {
    print("字符串转整数失败")
}

enum Season : Int {
    case sring = 1, summer, autumn, winter
}

if let season = Season(rawValue:1) {
    print(season)      // sring
    print(Season.sring)// sring
    switch season {
    case .sring:
        print("this is spring")
    default:
        print("this is other")
    }
} else {
    print("no such season")
}

// while循环中使用可选项
let strs = ["20", "-10", "sty", "03", "30", "aa"]
var index = 0
var sum = 0
while let value = Int(strs[index]), value > 0 {
    sum += value
    index += 1
}
print(sum)
