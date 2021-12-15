// 条件为fase执行语句
// 条件不成立退出
func login() {
    guard let num = Int("23-") else {
        print("解绑不成功")
        return
    }
}

login()
