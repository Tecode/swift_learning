//
//  005-OC对象跟函数.m
//  objective_c
//
//  Created by 昊轩 on 2022/4/29.
//

#import <Foundation/Foundation.h>

@interface Human002 : NSObject
{
    @public
    int width;
    int height;
}
- (void)run;
@end

@implementation Human002
- (void)run
{
    NSLog(@"%d，%d", width, height);
}
@end

void setValue(Human002 *data) {
    data->width = 100;
    data->height = 200;
}

int main() {
    Human002 *human = [Human002 new];
    setValue(human);
    [human run];
    return 0;
}
