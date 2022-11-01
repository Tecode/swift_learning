//
//  Bird.h
//  objective_c
//
//  Created by 昊轩 on 2022/10/31.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Human;

@interface Bird : NSObject

@property (nonatomic, strong) NSString* name;

@property (nonatomic, weak) Human* human;

@end

NS_ASSUME_NONNULL_END
