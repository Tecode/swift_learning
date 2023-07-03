//
//  Login.h
//  app-oc
//
//  Created by 昊轩 on 2023/6/9.
//

#import <Foundation/Foundation.h>

typedef void(^LoginFinishBlock)(BOOL isLogin);

/**
 QQ登录和分享相关逻辑
 */

NS_ASSUME_NONNULL_BEGIN

@interface Login : NSObject
@property(nonatomic, strong, readonly)NSString *nick;
@property(nonatomic, strong, readonly)NSString *address;
@property(nonatomic, strong, readonly)NSString *avatarUrl;

+ (instancetype)sharedLogin;

#pragma - mark - 登录

- (BOOL)isLogin;
- (void)loginWithFinishBlock:(LoginFinishBlock)finishBlock;
- (void)logOut;

#pragma mark - 分享
- (void)shareToQQWithArticleUrl:(NSURL *)articleUrl;
@end

NS_ASSUME_NONNULL_END
