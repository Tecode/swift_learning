//
//  DeleteCellVIew.m
//  app-oc
//
//  Created by 昊轩 on 2023/4/25.
//

#import "DeleteCellVIew.h"

//@interface DeleteCellVIew ()<UIWindowSceneDelegate>
//@end

@implementation DeleteCellVIew

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:({
            _backgroundView = [[UIView alloc] initWithFrame: self.bounds];
            _backgroundView.backgroundColor = [UIColor blackColor];
            _backgroundView.alpha = 0.6;
            //            点击背景关闭弹窗
            // 点击红色方块移除弹出层
            UITapGestureRecognizer *tap =[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hidenDeleteView)];
            [_backgroundView addGestureRecognizer:tap];
            _backgroundView;
        })];
        
        
        [self addSubview:({
            _deleteButton = [[UIView alloc] initWithFrame: CGRectMake(0, 0, 0, 0)];
            _deleteButton.backgroundColor = [UIColor redColor];
            // 点击红色方块移除弹出层
            UITapGestureRecognizer *tap =[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hidenDeleteView)];
            [_deleteButton addGestureRecognizer:tap];
            _deleteButton;
        })];
    }
    return self;
}

- (void)showDeleteViewFromPoint:(CGPoint) point clickBlock:(dispatch_block_t) block
{
    _deleteBlock = [block copy];
    _deleteButton.frame = CGRectMake(point.x, ABS(point.y), 0, 0);
    [[UIApplication sharedApplication].keyWindow addSubview: self];
    //    [UIView animateWithDuration:0.5f animations:^{
    //        self.deleteButton.frame = CGRectMake((self.bounds.size.width -200)/2, (self.bounds.size.height -200)/2, 200, 200);
    //    }];
    
    //    [UIView animateWithDuration:0.5f delay:0.5 options:UIViewAnimationOptionCurveEaseOut animations:^{
    //        self.deleteButton.frame = CGRectMake((self.bounds.size.width -200)/2, (self.bounds.size.height -200)/2, 200, 200);
    //    } completion:^(BOOL complete){
    //        NSLog(@"动画完成");
    //    }];
    [UIView animateWithDuration:1.f delay:0.f usingSpringWithDamping:0.5 initialSpringVelocity:0.5 options:UIViewAnimationOptionCurveEaseOut animations:^{
        self.deleteButton.frame = CGRectMake((self.bounds.size.width -200)/2, (self.bounds.size.height -200)/2, 200, 200);
        
    } completion:^(BOOL finashed){
        NSLog(@"动画完成");
    }];
}

- (void)hidenDeleteView
{
    [self removeFromSuperview];
    self.deleteBlock();
}


@end
