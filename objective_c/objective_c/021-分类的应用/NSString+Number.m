//
//  NSString+Number.m
//  objective_c
//
//  Created by 昊轩 on 2022/8/14.
//

#import "NSString+Number.h"

@implementation NSString (Number)
+ (int)numberCountOfString:(NSString *)value {
//    int count = 0;
//    for (int index = 0; index < value.length; ++index) {
//        char _value = [value characterAtIndex: index];
//        NSLog(@"%c", _value);
//        // 比对ascii码
//        if (_value >= 48 && _value <= 57) {
//            count ++;
//        }
//    }
    return [value numberCount];
}
- (int)numberCount {
    int count = 0;
    for (int index = 0; index < self.length; ++index) {
        char _value = [self characterAtIndex: index];
//        NSLog(@"%c", _value);
        // 比对ascii码
        if (_value >= 48 && _value <= 57) {
            count ++;
        }
    }
    return count;
}
@end
