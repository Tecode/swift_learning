//
//  Notification.m
//  app-oc
//
//  Created by 昊轩 on 2023/6/10.
//

#import "Notification.h"
#import <UserNotifications/UserNotifications.h>
#import <UIKit/UIKit.h>

@interface Notification()<UNUserNotificationCenterDelegate>
@property (nonatomic, strong, readwrite) UNMutableNotificationContent *content;
@end

@implementation Notification
+ (Notification *) notificationManager
{
    static Notification *notificationManager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        notificationManager = [[Notification alloc] init];
    });
    return notificationManager;
}

- (void)checkNotificationAuthorization
{
    if (@available(iOS 10.0, *)) {
        UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
        [center requestAuthorizationWithOptions:(UNAuthorizationOptionBadge| UNAuthorizationOptionSound) completionHandler:^(BOOL granted, NSError * _Nullable error) {
            if (granted) {
                // 本地推送
                [self handleNotifacation];
                // 远程推送
                dispatch_async(dispatch_get_main_queue(), ^{
                    [[UIApplication sharedApplication] registerForRemoteNotifications];            NSLog(@"远程推送OK");
                    
                });
            }
        }];
        center.delegate = self;
    } else {
        // Fallback on earlier versions
    }
}

- (void)handleNotifacation
{
    if (@available(iOS 10.0, *)) {
        _content = [[UNMutableNotificationContent alloc] init];
        _content.title = @"haoxuan";
        _content.badge = @(1);
        _content.body = @"推送一条本地消息";
        UNTimeIntervalNotificationTrigger *trigger = [UNTimeIntervalNotificationTrigger triggerWithTimeInterval:30.f repeats:NO];
        
        UNNotificationRequest *request = [UNNotificationRequest requestWithIdentifier:@"handleNotifacation" content:_content trigger:trigger];
        
        [[UNUserNotificationCenter currentNotificationCenter] addNotificationRequest:request withCompletionHandler:^(NSError * _Nullable error) {
            NSLog(@"本地推送OK");
        }];
    }
}

#pragma mark - 推送
- (void)userNotificationCenter:(UNUserNotificationCenter *)center willPresentNotification:(UNNotification *)notification withCompletionHandler:(void (^)(UNNotificationPresentationOptions))completionHandler
API_AVAILABLE(ios(10.0)){
    if (@available(iOS 10.0, *)) {
        completionHandler(UNNotificationPresentationOptionAlert);
    } else {
        // Fallback on earlier versions
    }
}

- (void)userNotificationCenter:(UNUserNotificationCenter *)center didReceiveNotificationResponse:(UNNotificationResponse *)response withCompletionHandler:(void (^)(void))completionHandler
{
    [_content setBadge: @(0)];
    //    处理业务逻辑
    completionHandler();
}

@end
