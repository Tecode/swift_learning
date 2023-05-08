//
//  ListItem.h
//  app-oc
//
//  Created by 昊轩 on 2023/5/6.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ListItem : NSObject
@property (nonatomic, readwrite, copy) NSString *title;
@property (nonatomic, readwrite, copy) NSString *category;
@property (nonatomic, readwrite, copy) NSString *authorName;
@property (nonatomic, readwrite, copy) NSString *date;
@property (nonatomic, readwrite, copy) NSString *uniquekey;
@property (nonatomic, readwrite, copy) NSString *url;
@property (nonatomic, readwrite, copy) NSString *thumbnailUrl;

-(void) configWithDictionary: (NSDictionary *)dictionary;

@end

NS_ASSUME_NONNULL_END
