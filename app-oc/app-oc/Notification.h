//
//  Notification.h
//  app-oc
//
//  Created by 昊轩 on 2023/6/10.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// App推送管理

@interface Notification : NSObject
+ (Notification *) notificationManager;
- (void) checkNotificationAuthorization;
@end

NS_ASSUME_NONNULL_END
