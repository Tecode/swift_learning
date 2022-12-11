//
//  Human.h
//  objective_c
//
//  Created by 昊轩 on 2022/11/1.
//

// 定义协议
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Human <NSObject>

@required
- (void) run;

@optional
- (int) sum:(int) value001 :(int) value002;

@end

NS_ASSUME_NONNULL_END
