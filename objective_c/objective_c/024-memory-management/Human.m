//
//  Human.m
//  objective_c
//
//  Created by 昊轩 on 2022/9/17.
//

#import "Human.h"

@implementation Human
- (void)dealloc {
    [super dealloc];
    NSLog(@"Human对象被回收");
}

@end
