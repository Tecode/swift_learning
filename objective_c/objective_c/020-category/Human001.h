//
//  Human001.h
//  objective_c
//
//  Created by 昊轩 on 2022/8/14.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Human001 : NSObject
{
    NSString *_name;
}
@property NSString *name;
- (void) runHunman;
// 会被分类方法覆盖，会出警告⚠️
- (void) run;
@end

NS_ASSUME_NONNULL_END
