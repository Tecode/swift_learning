//
//  NSMutableString.m
//  objective_c
//
//  Created by 昊轩 on 2023/1/2.
//

#import <Foundation/Foundation.h>

// NSMutableString可变字符串

int main() {
    NSMutableString *name = [NSMutableString stringWithString: @"haoxuan"];
//    追加内容
    [name appendString: @"work in city"];
//    删除固定位置的字符串
//    [name deleteCharactersInRange: NSMakeRange(0, 1)];
//    查找字符串range
    NSRange range = [name rangeOfString: @"xuan"];
    [name deleteCharactersInRange: range];
    
    NSString *name2 = @"haoxuan";
    NSString *val = [name2 stringByAppendingString: @"work in home"];
    NSLog(@"String1: %@", name);
    NSLog(@"String2: %@", val);
    return 0;
}
