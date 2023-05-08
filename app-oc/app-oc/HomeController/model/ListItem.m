//
//  ListItem.m
//  app-oc
//
//  Created by 昊轩 on 2023/5/6.
//

#import "ListItem.h"

@implementation ListItem

# warning 类型是否匹配
-(void) configWithDictionary: (NSDictionary *)dictionary {
    self.title = [dictionary objectForKey: @"title"];
    self.category = [dictionary objectForKey: @"category"];
    self.authorName = [dictionary objectForKey: @"author_name"];
    self.date = [dictionary objectForKey: @"date"];
    self.uniquekey = [dictionary objectForKey: @"uniquekey"];
    self.url = [dictionary objectForKey: @"url"];
    self.thumbnailUrl = [dictionary objectForKey: @"thumbnail_pic_s"];
}
@end
