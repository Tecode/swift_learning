//
//  Car.h
//  objective_c
//
//  Created by 昊轩 on 2022/9/19.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Car : NSObject
{
    NSString *_name;
    int _speed;
}

- (NSString *) name;
- (int) speed;
@end

NS_ASSUME_NONNULL_END
