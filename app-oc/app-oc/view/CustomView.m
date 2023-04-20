//
//  CustomView.m
//  app-oc
//
//  Created by 昊轩 on 2023/4/20.
//

#import "CustomView.h"

@implementation CustomView
- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    NSLog(@"CustomView init 初始化");
    return self;
}

- (void)willMoveToSuperview:(UIView *)view
{
    [super willMoveToSuperview: view];
    NSLog(@"willMoveToSuperview");
}

- (void)didMoveToWindow
{
    [super didMoveToWindow];
    NSLog(@"didMoveToWindow");
}

@end
