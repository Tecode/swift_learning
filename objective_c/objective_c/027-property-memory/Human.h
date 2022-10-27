//
//  Human.h
//  objective_c
//
//  Created by 昊轩 on 2022/10/27.
//

#import <Foundation/Foundation.h>
#import "Book.h"

NS_ASSUME_NONNULL_BEGIN

@interface Human : NSObject
// (retain):生成set方法里面release旧值，retain新值
@property (retain) Book *book;
@end

NS_ASSUME_NONNULL_END
