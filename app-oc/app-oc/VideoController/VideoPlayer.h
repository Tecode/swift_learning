//
//  VideoPlayer.h
//  app-oc
//
//  Created by 昊轩 on 2023/6/5.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface VideoPlayer : NSObject
- (void) playWithVideoUrl:(NSString *) videoUrl attachView:(UIView *) attachView;
+ (VideoPlayer *) player;
@end

NS_ASSUME_NONNULL_END
