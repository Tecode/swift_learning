//
//  ListLoader.h
//  app-oc
//
//  Created by 昊轩 on 2023/5/6.
//

#import <Foundation/Foundation.h>

@class ListItem;
typedef void(^ListLoaderFinishBlock)(BOOL success, NSArray<ListItem *> *listData);

NS_ASSUME_NONNULL_BEGIN

@interface ListLoader : NSObject

/// 请求数据的方法
- (void) requestListDataBlock:(ListLoaderFinishBlock)block;

- (void) getSandBoxPath;

@end

NS_ASSUME_NONNULL_END
