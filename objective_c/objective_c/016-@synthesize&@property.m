//
//  @synthesize&@property.m
//  objective_c
//
//  Created by 昊轩 on 2022/8/8.
//

#import <Foundation/Foundation.h>

@interface Human002 : NSObject
{
    int _age;
    int age;
    double _height;
    NSString *_name;
}

@property int age;
@property double height;
@property NSString *name;

- (void)run;

@end


@implementation Human002
// @synthesize自动生成getter和setter实现并访问_age成员变量
// 访问_age成员变量，如果没有回自动生成@private类型的_age成员变量
@synthesize age = _age;

- (void)run {
    NSLog(@"%d", age);
}
@end

int main(){
    @autoreleasepool {
        Human002 *human = [Human002 new];
        [human setAge:(10)];
        NSLog(@"%d", human.age);
        [human run];
    }
    return 0;
}

//2022-08-08 21:24:38.425147+0800 objective_c[49472:468837] 10
//2022-08-08 21:24:38.425345+0800 objective_c[49472:468837] 0
