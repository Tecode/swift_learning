//
//  Human001.m
//  objective_c
//
//  Created by 昊轩 on 2022/9/17.
//

#import "Human001.h"

@implementation Human001
+ (NSString *)description {
    return @"90";
}

- (NSString *)description {
    return [NSString stringWithFormat:@"name=%@,age=%d", _name, _age];
}
@end
