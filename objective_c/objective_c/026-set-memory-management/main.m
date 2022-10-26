//
//  main.m
//  objective_c
//
//  Created by 昊轩 on 2022/9/19.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "Human.h"



/**
内存管理规范：
1、只要alloc，必须release（autorelease）
2、set方法的代码规范
1-基本数据类型：直接复制
 - (void)setAge:(int)age
 {
 _age = age;
 }
 2-OC对象类型
 - (void) setCar: (Car *) car
 {
  1.先判断是不是新传来的对象
 if(car != car) {
    2.对对象做一次release
    [_car release];
    3.对新对象做一次retain
    _car = [car retain];
 }
 }
 3、dealloc方法的代码规范
 1-一定要[super dealloc]，而且放在最后面
 2-对self(当前)对象所拥有的其他对象做一次release
 -  (void)dealloc
 {
  [_car realese];
  [super dealloc];
 }
 */

int main() {
    Human *human = [[Human alloc] init];
    NSLog(@"Hello World2");
    return 0;
}
