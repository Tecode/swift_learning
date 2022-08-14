//
//  main.m
//  objective_c
//
//  Created by 昊轩 on 2022/8/14.
//

#import <Foundation/Foundation.h>
#import "Human001.h"
#import "NSObject+Log.h"


// 分类的作用：在不改变原类内容的基础上，可以为类增加一些方法
// 使用注意：
// 1、只能增加方法，不能增加成员变量
// 2、分类方法可以访问方法实现中可以访问原来类中声明的成员变量
// 3、分类可以重新实现原来类的方法，但是会覆盖原来类方法，会导致原来的方法无法使用
// 4、方法调用优先级：分类-->原来类-->父类
int main() {
    Human001 *human = [[Human001 alloc] init];
    NSLog(@"-----Category mian");
    [human runHunman];
    human.name = @"categroy haoxuan";
//    先去分类中找，再去原来类中找，最后再到父类中找
    [human run];
    return 0;
}
