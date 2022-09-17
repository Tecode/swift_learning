//
//  main.m
//  objective_c
//
//  Created by 昊轩 on 2022/9/17.
//

// retain、release、retainCount方法的基本使用
// retain：引用计数器+1，会返回对象本身
// release：引用计数-1，没有返回值
// releaseCount：获取当前引用计数器
// dealloc：当对象被回收时会调用，一定要调用[super dealloc]
// 野指针、僵尸对象
// retain返回对象本身

/**
 概念：
 1 》僵尸对象：所占用的对象被回收，僵尸对象不能再使用
 2 》野指针：指向僵尸对象（不可用内存）的指针，给野指针发消息会报错
 3 》空指针：没有指向任何东西的指针（存储的东西是nil、NULL、0），给空指针发消息不会报错
 */

#import <Foundation/Foundation.h>
#import "Human.h"

int main() {
    Human *human = [[Human alloc] init];
    NSUInteger count = [human retainCount];
//    1
    NSLog(@"Count:%ld", count);
//    2 retain方法返回的是本身
    [human retain];
//    0
    [human release];
    [human release];
    human = nil;
//    0 野指针，僵尸内存（指向不可用内存）
//    OC存在空指针错误，不给空指针发送消息，不报错
    [human release];
    return 0;
}
