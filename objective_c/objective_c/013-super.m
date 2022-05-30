//
//  013-super.m
//  objective_c
//
//  Created by 昊轩 on 2022/5/30.
//

#import <Foundation/Foundation.h>


// super的作用
// 1。直接调用父类中的某个方法
// 2.super处在对象方法中，那么会调用父类的对象方法
//   super处在类方法中，那么就会调用父类的类方法
// 3.使用场合：子类重写父类方法又要保留父类的一些行为
// 普通的动物类，会跑会叫
@interface Animal : NSObject
- (void) run;
+ (void) run;
@end

@implementation Animal
+ (void)run
{
    NSLog(@"动物会跑，会走路");
}
- (void)run {
    NSLog(@"动物会发出叫声");
}
@end

// 小鸟类
@interface Bird : Animal
@end

@implementation Bird
+ (void)run
{
    [super run];
    NSLog(@"小鸟会飞");
}

- (void)run
{
    [super run];
    NSLog(@"小鸟，叽叽咋咋");
}
@end

int main() {
    Bird *bird = [Bird new];
    [bird run];
    [Bird run];
    return 0;
}
