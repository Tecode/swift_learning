//
//  main.m
//  objective_c
//
//  Created by 昊轩 on 2022/11/1.
//

//1、协议的定义
//@protocol 协议名称 <NSObject>
//// 方法声明列表
//@end
//
//2、如何遵守协议
//    1.类遵守协议
//    @interface 类名： 父类名<协议名称1，协议名称2>
//    @end
//
//    2.协议遵守协议
//    @protocol 协议名称 <其它协议1，其它协议2>
//
//@end
//
//3、协议中方法声明的关键字
//    1.@required
//    要求实现，没有实现会报警告
//
//    2.@optional
//    不要求实现，无论如何不会报警告
//
//4、定义一个变量的时候，限制这个变量保存的对象遵守某个协议
//类名<协议名称> *变量名；
//id<协议名称> 变量名；
//NSObject<协议名称> obj;
//id<协议名称> obj;
//没有遵循协议编译会报警告
//
//5、@protocol中声明的属性也可以用做一个遵守协议的限制
//@protocol (nonatomic, strong) 类名<协议名称> *属性名；
//@protocol (nonatomic, strong) id<协议名称> 属性名；

//6、协议可以定义在单独.h文件，也可以定义在某个类中
//1.如果这个协议只在某个类中，应该把协议定义在该类中
//2.如果这个协议在很多类中，应该把协议定义单独文件
//
//7、分类可以定义在单独.h和.m文件中，也可以定义在原类中
//1.一般情况下都是定义在单独文件内
//2.定义在原来的内中，只要求看懂语法；



#import <Foundation/Foundation.h>
#import "Student.h"
#import "Human003.h"
#import "Animal.h"

int main() {
//    限制对象类型
    Student<Human003> *student = [[Student alloc] init];
//    Animal没有遵守Human003协议
    student.obj = [[Animal alloc] init];
    [student show];
    [student run];
    int sum = [student sum: 30 : 20];
    NSLog(@"Protocol %d", sum);
    return 0;
}
