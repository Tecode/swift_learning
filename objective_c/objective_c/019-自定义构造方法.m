//
//  019-自定义构造方法.m
//  objective_c
//
//  Created by 昊轩 on 2022/8/14.
//

#import <Foundation/Foundation.h>

@interface Human005 : NSObject
@property NSString *name;

// 自定义构造函数规范
// 一定是对象方法，以 - 开头
// 返回值一般是id类型
// 一般以initWidth开头

- (id)initWidthName:(NSString*) value;
@end

@implementation Human005
@synthesize name;
- (id)initWidthName:(NSString *)value {
    if (self = [super init]) {
        name = value;
    }
    return self;
}

@end

int main() {
    Human005 *human005 = [[Human005 alloc] initWidthName: @"haoxuan"];
    NSLog(@"%@", human005.name);
    return 0;
}
