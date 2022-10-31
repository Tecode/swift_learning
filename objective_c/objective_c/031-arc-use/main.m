//
//  main.m
//  objective_c
//
//  Created by 昊轩 on 2022/10/31.
//

#import <Foundation/Foundation.h>
#import "Human.h"
#import "Bird.h"

/**
 ARC的判断准则：只要没有强指针指向对象，就会释放
 
 1、ARC特点
     1.不允许调用release、retain、retainCount
     2.允许重写dealloc，但是不允许调用[super dealloc]
     3.@property参数
        * strong：成员变量前指针（适用于OC对象数据类型）
        * weak：成员变量弱指针（适用于OC对象类型）
        * assign：适用于非OC对象类型
 
 指针分2种：
     1.强指针：默认情况下，所有指针都是强指针 __strong
     2.弱指针：__weak
 */

int main() {
    Human *human = [[Human alloc] init];
    Bird *bird = [[Bird alloc] init];
    human.bird = bird;
    bird = nil;
    NSLog(@"%s", human.bird);
    return 0;
}
