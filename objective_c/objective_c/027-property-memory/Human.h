//
//  Human.h
//  objective_c
//
//  Created by 昊轩 on 2022/10/27.
//

#import <Foundation/Foundation.h>
#import "Book.h"

NS_ASSUME_NONNULL_BEGIN

/**
 1、set方法内存管理相关参数
 * retain：release旧值，retain新值（适用于OC对象）
 * assign：直接赋值（默认，适用于非OC对象）
 * copy：release旧值，copy新值
 
 
 2、是否要生成set方法
 * readwrite：同时生成setter、getter的声明、实现
 * readonly：只会生成getter的声明、实现
 
 3、多线程管理
 * nonatomic：性能高（一般用这个）
 * atomic：性能低（默认）
 

 4、setter和getter方法的名称
 * setter：决定set方法的名称，一定要有:
 * getter：觉得get方法的名称
 */


@interface Human : NSObject
// (retain):生成set方法里面release旧值，retain新值

@property (retain) Book *book;

@property (assign, nonatomic, setter = chageValue:) int age;

@property (readonly, retain) NSString *name;

@property (getter = isRich) BOOL rich;
@end

NS_ASSUME_NONNULL_END
