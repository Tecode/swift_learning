//
//  015_dot_syntax_main.m
//  objective_c
//
//  Created by 昊轩 on 2022/8/5.
//

#import <Foundation/Foundation.h>
#import "015_dot_syntax.h"


int main(){
    Human001 *human = [Human001 new];
//    [human setAge:(20)];
    human.age = 200;       // 等同于[human setAge:(20)]
    int value = human.age; // 等同于[human age]
    NSLog(@"%d", value);
    human.name = @"haoxuan";
    NSString *name = human.name;
    NSLog(@"%@", name);
    return 0;
}

//2022-08-05 17:12:08.736675+0800 objective_c[46877:381461] 触发setAge方法
//2022-08-05 17:12:08.736861+0800 objective_c[46877:381461] 触发age方法
//2022-08-05 17:12:08.736881+0800 objective_c[46877:381461] 200
//2022-08-05 17:12:08.736896+0800 objective_c[46877:381461] 触发setName方法
//2022-08-05 17:12:08.736917+0800 objective_c[46877:381461] haoxuan
