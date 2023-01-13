//
//  043-NSNumber.m
//  objective_c
//
//  Created by 昊轩 on 2023/1/12.
//

#import <Foundation/Foundation.h>

int main() {
//    @100将100包装成为一个NSNumber对象
    
//    @'A' NSNumber对象
//    @"A" NSString对象
    
    NSNumber *number = @100;
    NSArray *array = @[[NSNumber numberWithInt:20], @"90"];
    NSLog(@"%@", array);
    NSLog(@"%d", [array[0] intValue]);
    NSLog(@"%d", [array[1] intValue]);
    NSLog(@"%d", [number intValue]);
    
    
//    将data包装成NSNumber对象
    int data = 100;
    NSNumber *score = @(data);
    NSLog(@"%@", score);
    return 0;
}
