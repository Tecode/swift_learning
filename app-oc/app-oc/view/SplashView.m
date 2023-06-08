//
//  SplashView.m
//  app-oc
//
//  Created by 昊轩 on 2023/6/8.
//

#import "SplashView.h"

@interface SplashView()
@property (nonatomic, strong, readwrite) UIButton *button;
@end


@implementation SplashView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.image = [UIImage imageNamed: @"icon.bundle/splash.png"];
        [self addSubview:({
            _button = [[UIButton alloc] initWithFrame: CGRectMake(320, 100, 60, 40)];
            _button.backgroundColor = [UIColor blackColor];
            _button.alpha = 0.6;
            _button.titleLabel.textColor = [UIColor blackColor];
            [_button setTitle:@"跳过" forState:UIControlStateNormal];
            [_button addTarget:self action:@selector(handleClick) forControlEvents:UIControlEventTouchUpInside];
            _button;
        })];
        self.userInteractionEnabled = YES;
    }
    return  self;
}

- (void) handleClick
{
    [self removeFromSuperview];
}

@end
