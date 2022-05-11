//
//  007-OC类方法参数.m
//  objective_c
//
//  Created by 昊轩 on 2022/5/5.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject
// 返回一个double类型的值
-(double)pi;
// 求平方并返回
-(int)square:(int)number;
// 传入两个参数
-(int)sum:(int)value001 param:(int)value002;
@end

@implementation Calculator
-(double)pi
{
    return 3.14;
}
-(int)square:(int)number
{
    return number*number;
}
-(int)sum:(int)value001 param:(int)value002
{
    return value001 + value002;
}
@end

int main() {
    Calculator *calculator = [Calculator new];
    double pi =  [calculator pi];
    NSLog(@"返回的PI:%f", pi * 2);
    int square = [calculator square:(10)];
    NSLog(@"返回的Square平方:%d", square);
    int sum = [calculator sum:1 param:2];
    NSLog(@"返回的Sum和:%d", sum);
//    2022-05-05 15:27:38.175442+0800 objective_c[4666:697042] 返回的PI:6.280000
//    2022-05-05 15:27:38.175637+0800 objective_c[4666:697042] 返回的Square平方:100
//    2022-05-05 15:27:38.175658+0800 objective_c[4666:697042] 返回的Sum和:3
    return 0;
}
