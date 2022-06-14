//
//  002-other-header.m
//  objective_c
//
//  Created by 昊轩 on 2022/4/29.
//

#import <Foundation/Foundation.h>
#import "002_other_header.h"

void run(int value001, int value002){
    int sum = value001 + value002;
    printf("%d", sum);
}
@implementation Caculator
+(void)run:(int)value001 num:(int)value002{
    NSLog(@"%d", value001 + value002);
}
@end
