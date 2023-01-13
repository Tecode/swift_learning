//
//  044-NSValue.m
//  objective_c
//
//  Created by 昊轩 on 2023/1/12.
//

#import <Foundation/Foundation.h>

int main() {
    NSRange range = NSMakeRange(10, 20);
//    将结构体变为OC对象
    NSValue *rangeValue = [NSValue valueWithRange:range];
    NSArray *array = @[@"haoxuan", rangeValue];
//    将OC对象转为结构体
    NSRange data = [array[1] rangeValue];
    NSLog(@"%@",array);
    NSLog(@"%ld", data.length);
    return 0;
}

//2023-01-13 11:21:09.120547+0800 objective_c[3038:52033] (
//    haoxuan,
//    "NSRange: {10, 20}"
//)
//2023-01-13 11:21:09.120731+0800 objective_c[3038:52033] 20
