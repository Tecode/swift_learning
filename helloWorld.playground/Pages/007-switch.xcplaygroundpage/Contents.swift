// break可以省略,fallthrough贯穿效果
// 模式匹配
var number = 1

switch number {
case 1 :
    print("很好")
    fallthrough
case 2:
    print("一般")
default:
    print("还好")
}

// 区间匹配
let number2 = 45
switch number2 {
case 1 :
    print("很好")
case 2...50:
    print("一般")
default:
    print("还好")
}

let point = (1, 1)
// (_,0)
switch point {
case (_,0) :
    print("很好")
case (1,2):
    print("一般")
case (-2...2,-3...3):
    print("可以")
default:
    print("还好")
}
// (let x, 1)
switch point {
case (let x, 1) :
    print("很好\(x)")
case (1,2):
    print("一般")
case (-2...2,-3...3):
    print("可以")
default:
    print("还好")
}

switch point {
case (let x, let y) where x != y :
    print("很好\(x)")
case let(x,y) where x == y:
    print("一般\(x)==\(y)")
case (-2...2,-3...3):
    print("可以")
default:
    print("还好")
}

// 将正数叠加起来
let numbers = [20,30,40,-20,-40,-10]
var sum = 0
// where 用来过滤
for value in numbers where value > 0 {
    sum+=value
}
print(sum)
