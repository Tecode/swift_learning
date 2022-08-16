//
//  NSString+Number.h
//  objective_c
//
//  Created by 昊轩 on 2022/8/14.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (Number)
// NSString扩展一个类方法
+(int)numberCountOfString:(NSString*) value;
// NSString扩展一个对象方法
-(int)numberCount;
@end

NS_ASSUME_NONNULL_END
