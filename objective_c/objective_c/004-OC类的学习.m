//
//  004-OC类的学习.m
//  objective_c
//
//  Created by 昊轩 on 2022/4/29.
//

#import <Foundation/Foundation.h>

// 类的声明
@interface Human001 : NSObject
{
    @public
    int age;
    int height;
}

// 方法（行为）：方法名、参数、返回值（实现、声明）
// 只要是OC对象的方法必须以减号 - 开头
// OC方法的小括号():阔住函数类型
- (void)run;
@end

// 类的实现
@implementation Human001
- (void)run {
    printf("run方法运行成功，年龄%d身高%d \n", age, height);
}
@end


int main() {
    // [行为执行者 名称对象]
    // 执行Human001这个类的创建
    // *human是对象的地址
    Human001 *human = [Human001 new];
    human->age = 28;
    human->height=180;
    
    // 给human一条run消息
    [human run];  // run方法运行成功，年龄28身高180
    
    NSLog(@"年龄%d岁，身高%d厘米", human->age, human ->height); // 年龄28岁，身高180厘米
    
    return 0;
}
