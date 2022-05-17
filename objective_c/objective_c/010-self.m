//
//  self.m
//  objective_c
//
//  Created by 昊轩 on 2022/5/16.
//

#import <Foundation/Foundation.h>


/*
 self的用途：
 1、谁调用当前方法，self就代表谁，
 self出现在对象方法中，self就代码对象
 self出现在类方法中，self就代表类
 2、在对象的方法利用“self->成员变量”访问对象内部的成员变量
 [self 方法名]
 */

@interface Student : NSObject
{
    char *name;
}

+ (void)sayName:(char*)name;

- (void)setName:(char*) value;

- (void)out;

- (void)sayName;
@end


@implementation Student
- (void)setName:(char*)value
{
    name = value;
}

+ (void)sayName:(char*)name
{
    NSLog(@"你好啊，我是%s", name);
//    [self sayName:<#(char *)#>]
}

- (void)sayName
{
    NSLog(@"你好啊，我是%s", self->name);
}

- (void)out
{
    NSLog(@"%s", self->name);
    [Student sayName:self->name];
    [self sayName];
}
@end


int main() {
    Student *student = [Student new];
    [student setName:"haoxuan"];
    [student out];
//    2022-05-17 16:15:40.643028+0800 objective_c[80863:550826] haoxuan
//    2022-05-17 16:15:40.643267+0800 objective_c[80863:550826] 你好啊，我是haoxuan    return 0;
}
