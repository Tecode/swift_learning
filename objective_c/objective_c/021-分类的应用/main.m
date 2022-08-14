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
    NSLog(@"字符串包含的数字有 %d 个", count);
    return 0;
}
