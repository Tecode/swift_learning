// 枚举
enum Direction {
    case north
    case south
    case east
    case west
}

var direction = Direction.east
direction = .north

// 关联值
enum Score {
    case point(Int)
    case grade(Character)
}

var score = Score.point(90)
score = .grade("A")

switch score {
case .point(let index):
    print("\(index)--point")
case let .grade(index):
    print("\(index)--grade")
}

// 原始值
enum PokerSuit: Character {
    case spade = "♠️"
    case club = "♣️"
}

print(PokerSuit.spade)
print(PokerSuit.club.rawValue)

// 隐式原始值
enum Direction001: String {
    case north
    case south
    case east
    case west
}

enum Direction002: String {
    case north = "north"
    case south = "south"
    case east = "east"
    case west = "west"
}

print(Direction001.north)
print(Direction001.north.rawValue)
print(Direction002.west)
print(Direction002.west.rawValue)


// 递归枚举
indirect enum ArithExpr {
    case num(Int)
    case sum(ArithExpr)
}

 enum ArithExpr002 {
    case num(Int)
    indirect case sum(ArithExpr)
}
