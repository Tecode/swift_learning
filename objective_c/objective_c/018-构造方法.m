//
//  017-构造方法.m
//  objective_c
//
//  Created by 昊轩 on 2022/8/14.
//

#import <Foundation/Foundation.h>

@interface Human004 : NSObject
@property int age;
@end

@implementation Human004
@synthesize age;
// 重写init方法
- (instancetype)init
{
//    一定要调用super init方法，初始化父类中声明的一些属性方法和其它属性
    self = [super init];
    if (self) {
        age = 23;
    }
//     返回一个已经初始化的对象
    return self;
}
@end

@interface Student : Human004
@property int _no;
@end

@implementation Student
@synthesize _no;

- (instancetype)init
{
    self = [super init];
    if (self) {
        _no = 1009;
    }
    return self;
}
@end

int main(){
//  Student父类
    Human004 *human004 = [[Human004 alloc] init];
    human004.age = 10;
    NSLog(@"human的年龄----%d", human004.age);
//  Student类方法实现
    Student *student = [Student new];
    NSLog(@"学生的年龄继承Human----%d", student.age);
    NSLog(@"学生的学号----%d", student._no);
    return 0;
}

//2022-08-14 14:57:30.969813+0800 objective_c[6296:63618] human的年龄----10
//2022-08-14 14:57:30.969986+0800 objective_c[6296:63618] 学生的年龄继承Human----23
//2022-08-14 15:00:44.166139+0800 objective_c[6534:66378] 学生的学号----1009
