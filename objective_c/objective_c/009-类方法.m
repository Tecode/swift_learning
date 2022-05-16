//
//  类方法.m
//  objective_c
//
//  Created by 昊轩 on 2022/5/13.
//

#import <Foundation/Foundation.h>


@interface Human002 : NSObject
// 类方法以+开头
// 场合：当方法内部不需要使用到成员变量时，就可以使用类方法
+ (void)printName;
@end

@implementation Human002
+ (void)printName
{
    NSLog(@"Human类");
}

@end

int main(){
    [Human002 printName];
    return 0;
}
