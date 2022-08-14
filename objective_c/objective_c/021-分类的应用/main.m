//
//  main.m
//  objective_c
//
//  Created by 昊轩 on 2022/8/14.
//

#import <Foundation/Foundation.h>
#import "NSString+Number.h"


int main() {
    int count = [NSString numberCountOfString: @"haoxuan1009"];
    char _value = '0';
    NSLog(@"字符串包含的数字有 %d 个", count);
    NSLog(@"ascii码 %d", (int)(_value));
    NSLog(@"ascii码 %d", _value + 1);
    return 0;
}

//2022-08-14 17:28:08.884868+0800 objective_c[18453:200597] h
//2022-08-14 17:28:08.885056+0800 objective_c[18453:200597] a
//2022-08-14 17:28:08.885075+0800 objective_c[18453:200597] o
//2022-08-14 17:28:08.885086+0800 objective_c[18453:200597] x
//2022-08-14 17:28:08.885097+0800 objective_c[18453:200597] u
//2022-08-14 17:28:08.885106+0800 objective_c[18453:200597] a
//2022-08-14 17:28:08.885115+0800 objective_c[18453:200597] n
//2022-08-14 17:28:08.885168+0800 objective_c[18453:200597] 1
//2022-08-14 17:28:08.885228+0800 objective_c[18453:200597] 0
//2022-08-14 17:28:08.885247+0800 objective_c[18453:200597] 0
//2022-08-14 17:28:08.885267+0800 objective_c[18453:200597] 9
//2022-08-14 17:28:08.885294+0800 objective_c[18453:200597] 字符串包含的数字有 4 个
