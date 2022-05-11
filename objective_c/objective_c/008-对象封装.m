//
//  匿名对象.m
//  objective_c
//
//  Created by 昊轩 on 2022/5/11.
//

#import <Foundation/Foundation.h>

@interface Caculator : NSObject
{
    int value001;
    int value002;
}
- (void)setValue001:(int)value;
- (void)setValue002:(int)value;

- (int)getValue001;
- (int)getValue002;

- (int)getSum;
@end

@implementation Caculator
- (void)setValue001:(int)value
{
    value001 = value;
}

- (void)setValue002:(int)value
{
    value002 = value;
}

- (int)getValue001 {
    return value001;
}

- (int)getValue002
{
    return value002;
}

- (int)getSum
{
    return value001 + value002;
}

@end

int main(){
    Caculator *caculator = [Caculator new];
    [caculator setValue001:100];
    [caculator setValue002:200];
    NSLog(@"value001-> %d", [caculator getValue001]);
    NSLog(@"value001-> %d", [caculator getValue002]);
    NSLog(@"总和：%d", [caculator getSum]);
//    2022-05-11 20:20:24.209808+0800 objective_c[82009:1241161] value001-> 100
//    2022-05-11 20:20:24.210055+0800 objective_c[82009:1241161] value001-> 200
//    2022-05-11 20:20:24.210091+0800 objective_c[82009:1241161] 总和：300
}
