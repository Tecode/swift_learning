//
//  Human.m
//  objective_c
//
//  Created by 昊轩 on 2022/10/30.
//

#import "Human.h"

@implementation Human
+ (id) human {
    return [[self alloc] autorelease];
}

+ (id)humanWidthAge:(int)age {
    Human *human = [self human];
    human.age = age;
    return human;
}

- (void)dealloc {
    NSLog(@"Human %d 岁被销毁了", _age);
    [super dealloc];
}
@end
