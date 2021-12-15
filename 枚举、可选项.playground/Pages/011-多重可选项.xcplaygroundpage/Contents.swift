var num1: Int? = 10
var num2: Int?? = num1
var num3: Int?? = 10

print(String(describing: num2)) // Optional(Optional(10))
print(num3!!) // 10
print(num2 == num3) // true
