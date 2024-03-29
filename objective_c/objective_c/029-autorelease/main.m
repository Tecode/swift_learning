//
//  main.m
//  objective_c
//
//  Created by 昊轩 on 2022/10/30.
//

#import <Foundation/Foundation.h>
#import "Human.h"


/**
 1、autorelease的基本用法
     1.会将对象放到一个自动释放池中
     2.当自动释放池销毁时，会对池子里面的所有对象进行一次release操作
     3.会返回对象本身
     4.调用完autorelease方法后，对象计数器不变
 2、autorelease的好处
     1.不用关心对象的释放时间
     2.不用关心什么时候调用release
 3、autorelease的使用注意
     1.占用内存较大的对象不要随意使用autorelease
     2.占用内存较小的对象使用autorelease，没太大影响
 4、错误写法
     1.alloc后调用autorelease又调用release
     @autoreleasepool {
         Human *human2 = [[[Human alloc] init] autorelease];
         human2.age = 45;
         NSLog(@"Human2的年龄：%d", human2.age);
         [human2 release]
     }
     2.连续多次调用autorelease
     @autoreleasepool {
         Human *human2 = [ [[[Human alloc] init] autorelease] autorelease];
         human2.age = 45;
         NSLog(@"Human2的年龄：%d", human2.age);
     }
 5、自动释放池
     1.在iOS程序运行过程中，会创建无数个池子。这些池子都是以栈结构存在（先进后出）
     2.当一个对象调用autorelease方法时，会将这个对象放到栈顶的释放池
 */

int main() {
    /**
     autorelease会返回对象本身
     调用完autorelease后，对象计数器不变
     autorelease会将对象放到一个自动释放池中
     当自动释放池销毁时，会对里面的所有对象进行一次release操作
     */
//    开始创建释放池
    @autoreleasepool {
        Human *human = [[[Human alloc] init] autorelease];
        human.age = 18;
        NSLog(@"Human的年龄：%d", human.age);
        
        @autoreleasepool {
            Human *human2 = [[[Human alloc] init] autorelease];
            human2.age = 45;
            NSLog(@"Human2的年龄：%d", human2.age);
        }
    }
//    结束销毁释放池
    return 0;
}
