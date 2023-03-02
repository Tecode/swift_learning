//
//  ObjectiveHuman.h
//  swift_oc
//
//  Created by 昊轩 on 2022/4/28.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

int sum(int a, int b);

@interface ObjectiveHuman : NSObject
@property (assign, nonatomic) NSString *name;
@property (assign, nonatomic) NSInteger age;
- (void) run;
@end

NS_ASSUME_NONNULL_END
