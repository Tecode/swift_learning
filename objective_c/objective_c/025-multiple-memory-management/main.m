//
//  main.m
//  objective_c
//
//  Created by 昊轩 on 2022/9/17.
//

#import <Foundation/Foundation.h>
#import "Human.h"
#import "Book.h"

/**
 1、你想使用（占用）某个对象，就应该让对象的计数器+1（让对象做1次retain操作）
 2、你不想使用（占用）某个对象，就应该让对象的计数器-1（让对象做1次release操作）
 3、谁retain，谁release
 4、谁alloc，谁release
 */

int main() {
    Human *human = [[Human alloc] init];
    Book *book = [[Book alloc] init];
    [human setBook: book];
    NSLog(@"human-count %ld", [human retainCount]);
    NSLog(@"book-count %ld", [book retainCount]);
//  *** -[Human book]: message sent to deallocated instance 0x1051aa520
//  setBook 直接将地址给_book，会导致引用计数不会增加销毁内存后使用会报错
    
    [book release];
    book = nil;
    NSLog(@"%@", [human book]);
    [human release];
    human = nil;
    return 0;
}

//2022-09-18 00:05:44.542209+0800 objective_c[32435:329582] human-count 1
//2022-09-18 00:05:44.542403+0800 objective_c[32435:329582] book-count 2
//2022-09-18 00:05:44.542487+0800 objective_c[32435:329582] <Book: 0x1007b86e0>
//2022-09-18 00:05:44.542517+0800 objective_c[32435:329582] Human对象销毁
//2022-09-18 00:05:44.542537+0800 objective_c[32435:329582] Book对象销毁
