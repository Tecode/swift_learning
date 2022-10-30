//
//  main.m
//  objective_c
//
//  Created by 昊轩 on 2022/10/30.
//

#import <Foundation/Foundation.h>
#import "Human.h"
#import "Student.h"


/**
 1、系统自带的方法没有alloc、new、copy，说明返回的对象都是autorelease的对象
 2、开发中经常会提供一些类方法，创建一个已经release过的对象
 3、创建对象一般不用类名，一般用self
 */

int main() {
    Human *human001 = [[Human alloc] init];
    human001.age = 20;
    [human001 release];
    
    @autoreleasepool {
        Human *human002 = [Human human];
        human002.age = 101;
        NSLog(@"autorelease的应用");
        
//        humanWidthAge
        Human *human003 = [Human humanWidthAge: 22];
        NSLog(@"human003:%d", [human003 age]);
    }
//    Student
    @autoreleasepool {
        Student *student = [Student humanWidthAge: 28];
        student.money = 80;
        NSLog(@"Student money:%d", student.money);
    }
    return 0;
}


//2022-10-30 23:24:13.782763+0800 objective_c[8873:228217] Human 20 岁被销毁了
//2022-10-30 23:24:13.782977+0800 objective_c[8873:228217] autorelease的应用
//2022-10-30 23:24:13.782999+0800 objective_c[8873:228217] human003:22
//2022-10-30 23:24:13.783018+0800 objective_c[8873:228217] Human 22 岁被销毁了
//2022-10-30 23:24:13.783034+0800 objective_c[8873:228217] Human 101 岁被销毁了
//2022-10-30 23:24:13.783051+0800 objective_c[8873:228217] Student money:80
//2022-10-30 23:24:13.783067+0800 objective_c[8873:228217] Human 28 岁被销毁了
