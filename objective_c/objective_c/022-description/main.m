//
//  main.m
//  objective_c
//
//  Created by 昊轩 on 2022/9/17.
//

#import <Foundation/Foundation.h>
#import "Human001.h"

int main() {
// 会调用类的+description方法，拿到+description返回NSString*显示到屏幕上
    Class human001 = [Human001 class];
    NSLog(@"类方法返回结果：%@", human001);
//  默认情况下利用NSLog返回的是<类名，内存地址>
//  会调用hunman002 -description方法返回NSString*
//  -description默认返回<类名，内存地址>
    Human001 *human002 = [[Human001 alloc] init];
    human002.name = @"haouxan";
    human002.age = 20;
    NSLog(@"%@", human002);
    NSLog(@"%s", __FILE__);
    return 0;
}

//2022-09-17 15:46:23.167992+0800 objective_c[15422:157327] 类方法返回结果：90
//2022-09-17 15:46:23.168179+0800 objective_c[15422:157327] name=haouxan,age=20
//2022-09-17 15:46:23.168197+0800 objective_c[15422:157327] /Users/haoxuan/Work/swift_learning/objective_c/objective_c/022-description/main.m
