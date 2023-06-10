//
//  Location.h
//  app-oc
//
//  Created by 昊轩 on 2023/6/9.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// App定位管理

@interface Location : NSObject
+ (Location *) locationManager;
- (void) checkLocationAuthorization;
@end

NS_ASSUME_NONNULL_END
