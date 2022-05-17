//
//  012-多态.m
//  objective_c
//
//  Created by 昊轩 on 2022/5/17.
//

#import <Foundation/Foundation.h>

@interface Animal : NSObject
- (void)run;
@end

@implementation Animal
- (void)run
{
    NSLog(@"Animal-父类方法");
}
@end

@interface Cat : Animal
@end

// 继承
@implementation Cat
- (void)run
{
    NSLog(@"Cat-子类方法");
}
@end

int main()
{
    Cat *cat = [Cat new];
    Animal *animal = [Animal new];
    [cat run];
    [animal run];
//    2022-05-17 20:00:07.075909+0800 objective_c[37862:929005] Cat-子类方法
//    2022-05-17 20:00:07.076115+0800 objective_c[37862:929005] Animal-父类方法
    return 0;
}
