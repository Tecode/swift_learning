//
//  ObjectiveHuman.m
//  swift_oc
//
//  Created by 昊轩 on 2022/4/28.
//

#import "ObjectiveHuman.h"

// C语言方法
int sum(int a, int b) {
    return a + b;
}

@implementation ObjectiveHuman
@synthesize name;
@synthesize age;
-(void)run{
    NSLog(@"来自OC的方法调用%@", self.name);
}
@end
