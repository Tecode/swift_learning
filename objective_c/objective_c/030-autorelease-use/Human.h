//
//  Human.h
//  objective_c
//
//  Created by 昊轩 on 2022/10/30.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Human : NSObject
@property (nonatomic, assign) int age;
+ (id) human;
+ (id)humanWidthAge:(int) age;
@end

NS_ASSUME_NONNULL_END
