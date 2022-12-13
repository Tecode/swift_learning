//
//  Human.h
//  objective_c
//
//  Created by 昊轩 on 2022/12/11.
//

#import <Foundation/Foundation.h>
#import "AngentProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface Human : NSObject

@property (nonatomic, strong) id<AngentProtocol> detail;

@end

NS_ASSUME_NONNULL_END
