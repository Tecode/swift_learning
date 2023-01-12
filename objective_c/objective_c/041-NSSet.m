//
//  041-NSSet.m
//  objective_c
//
//  Created by 昊轩 on 2023/1/8.
//

#import <Foundation/Foundation.h>

// NSSet和NSrray的对比
// 1、共同点
// 都是集合，都能存放OC对象
// 只能存放OC对象，不能存放非OC对着（基本数据类型：int、char、float等、结构体、枚举）
int main () {
//    NSSet是无序的
    NSSet *set01 = [NSSet set];
    NSSet *set02 = [NSSet setWithObjects:@"kotlin",@"swift", nil];
    NSLog(@"NSSet01 %@", set01);
    NSSet *set03 = [set02 setByAddingObject: @"javascript"];
    NSSet *set04 = [set02 setByAddingObject: @"javascript"];
//  NSSet元素不会重复
    NSLog(@"NSSet02 %@", set02);
    NSLog(@"NSSet03 %@", set03);
    NSLog(@"NSSet03 %@", set04);
//    可变长度的Set
    NSMutableSet *mutabelSet = [NSMutableSet setWithObjects:@"Golang", @"swift", nil];
    [mutabelSet addObject:@"object-c"];
    [mutabelSet addObject: @"typescript"];
    NSLog(@"可变长度NSMutableSet:%@", mutabelSet);
    return 0;
}

//2023-01-09 20:10:01.939114+0800 objective_c[16276:247141] NSSet01 {(
//)}
//2023-01-09 20:10:01.939335+0800 objective_c[16276:247141] NSSet02 {(
//    swift,
//    kotlin
//)}
//2023-01-09 20:10:01.939358+0800 objective_c[16276:247141] NSSet03 {(
//    swift,
//    javascript,
//    kotlin
//)}
//2023-01-09 20:10:01.939375+0800 objective_c[16276:247141] NSSet03 {(
//    swift,
//    javascript,
//    kotlin
//)}
//2023-01-09 20:10:01.939425+0800 objective_c[16276:247141] 可变长度NSMutableSet:{(
//    Golang,
//    "object-c",
//    swift,
//    typescript
//)}
