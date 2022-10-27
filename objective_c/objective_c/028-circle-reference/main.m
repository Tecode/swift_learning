//
//  main.m
//  objective_c
//
//  Created by 昊轩 on 2022/10/27.
//

#import <Foundation/Foundation.h>
#import "IDCard.h"
#import "Human.h"

//1、@class 的作用：仅仅告诉编译器，某个名称是一个类
//   @class Human 告诉编译器Human是一个类
// 2、开发引用一个类的规范
// 01.在.h文件中用@class来声明类
// 02.在.m文件中用#import来包含类的所有东西
// 两端循环引用解决方案
// 01、一端用retain
// 02、一端用assign


int main () {
    Human *human = [[Human alloc] init];
    IDCard *idCard = [[IDCard alloc] init];
    human.idCard = idCard;
    idCard.human = human;
    NSLog(@"循环引用Human：%ld",[human retainCount]);
    NSLog(@"循环引用IDCard：%ld",[idCard retainCount]);
    [human release];
    [idCard release];
//    NSLog(@"循环引用Human：%ld",[human retainCount]);
//    NSLog(@"循环引用IDCard：%ld",[idCard retainCount]);
    return 0;
}
