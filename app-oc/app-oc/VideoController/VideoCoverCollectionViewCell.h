//
//  VideoCoverCollectionViewCell.h
//  app-oc
//
//  Created by 昊轩 on 2023/6/4.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface VideoCoverCollectionViewCell : UICollectionViewCell
- (void) layoutWithVideoCoverUrl: (NSString *) videoCoverUrl videoUrl:(NSString *)videoUrl;
@end

NS_ASSUME_NONNULL_END
