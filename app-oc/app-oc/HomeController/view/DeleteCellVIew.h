//
//  DeleteCellVIew.h
//  app-oc
//
//  Created by 昊轩 on 2023/4/25.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DeleteCellVIew : UIView

@property(atomic, strong, readwrite) UIView *backgroundView;
@property(atomic, strong, readwrite) UIView *deleteButton;
@property(atomic, strong, readwrite) UIWindow *window;
@property(atomic, copy, readwrite) dispatch_block_t deleteBlock;

- (void)showDeleteViewFromPoint:(CGPoint) point clickBlock:(dispatch_block_t) block;
@end

NS_ASSUME_NONNULL_END
