//
//  017-id.m
//  objective_c
//
//  Created by 昊轩 on 2022/8/8.
//

#import <Foundation/Foundation.h>

@interface Human003 : NSObject
@property int age;
@end

@implementation Human003
@synthesize age;
@end

int main(){
//    万能指针能指向操作任何对象
    @autoreleasepool {
        id human = [Human003 new];
        [human setAge:190];
        NSLog(@"%d", [human age]);
    }
    return 0;
