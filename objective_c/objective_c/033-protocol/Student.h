//
//  Student.h
//  objective_c
//
//  Created by 昊轩 on 2022/11/1.
//

#import <Foundation/Foundation.h>
#import "Human.h"
#import "Human003.h"

NS_ASSUME_NONNULL_BEGIN

@class Animal;

//@protocol Human;
//
//@protocol Human003;

@interface Student : NSObject <Human, Human003>

@property (nonatomic, strong) id<Human003> obj;

@property (nonatomic, strong) Animal *bird;

@end

NS_ASSUME_NONNULL_END
