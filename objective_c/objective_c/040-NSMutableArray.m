//
//  NSMutableArray.m
//  objective_c
//
//  Created by 昊轩 on 2023/1/8.
//

#import <Foundation/Foundation.h>

@interface Human : NSObject
@property int count;
@end

@implementation Human

@end

int main() {
    Human *hunmam = [[Human alloc] init];
//  unrecognized selector sent to instance 0x100008198
//    @[]返回的是NSArray没有addObject方法
//    NSMutableArray *array = @[@"name"];
//    [array addObject: @"haouan"];
    NSMutableArray *mutabelArray = [NSMutableArray arrayWithObjects:@"swift", @"name", hunmam, nil];
//    添加元素
    [mutabelArray addObject: @"javascript"];
//    移除全部元素
//    [mutabelArray removeAllObjects];
//    移除指定位置的元素
    [mutabelArray removeObjectAtIndex:2];
    NSLog(@"%@", mutabelArray);
    return 0;
}
