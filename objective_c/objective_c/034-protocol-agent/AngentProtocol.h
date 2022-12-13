//
//  AngentProtocol.h
//  objective_c
//
//  Created by 昊轩 on 2022/12/11.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol AngentProtocol <NSObject>

@required

- (void) ticketCount;

- (void) ticketInfo;

@end

NS_ASSUME_NONNULL_END
