//
//  main.m
//  objective_c
//
//  Created by 昊轩 on 2022/9/17.
//

#import <Foundation/Foundation.h>
#import "Hunman.h"

// SEL其实是对方法的一种包装，将方法包装成SEL对象，去找方法对应的地址，找到方法地址调用对应的方法

int main (){
    Hunman *human = [[Hunman alloc] init];
//  把running001包装成SEL数据类型
//  根据SEL找到数据对应的方法地址
//  根据方法地址调用对应的方法
    [human running001];
//  间接调用running002方法
    [human performSelector:@selector(running002)];
//  间接调用running00方法
//    SEL sel = @selector(running003:);
    [human performSelector:@selector(running003:) withObject:@"haoxuan"];
    return 0;
}

