//
//  015-dot-syntax.m
//  objective_c
//
//  Created by 昊轩 on 2022/8/5.
//

#import "015_dot_syntax.h"

@implementation Human001
- (void)setAge:(int)age
{
    _age = age;
    NSLog(@"触发setAge方法");
}

- (int)age
{
    NSLog(@"触发age方法");
    return _age;
}

- (void)setName:(NSString *)name
{
    _name = name;
    NSLog(@"触发setName方法");
}
- (NSString *)name {
    return _name;
}
@end
