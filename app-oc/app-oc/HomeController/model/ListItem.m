//
//  ListItem.m
//  app-oc
//
//  Created by 昊轩 on 2023/5/6.
//make

#import "ListItem.h"

@implementation ListItem

#pragma make - 实现NSSecureCoding协议
- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super init];
    if (self) {
        self.title = [coder decodeObjectForKey: @"title"];
        self.category = [coder decodeObjectForKey: @"category"];
        self.authorName = [coder decodeObjectForKey: @"authorName"];
        self.date = [coder decodeObjectForKey: @"date"];
        self.uniquekey = [coder decodeObjectForKey: @"uniquekey"];
        self.url = [coder decodeObjectForKey: @"url"];
        self.thumbnailUrl = [coder decodeObjectForKey: @"thumbnailUrl"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder
{
    [coder encodeObject:self.title forKey:@"title"];
    [coder encodeObject:self.category forKey:@"category"];
    [coder encodeObject:self.authorName forKey:@"authorName"];
    [coder encodeObject:self.date forKey:@"date"];
    [coder encodeObject:self.uniquekey forKey:@"uniquekey"];
    [coder encodeObject:self.url forKey:@"url"];
    [coder encodeObject:self.thumbnailUrl forKey:@"thumbnailUrl"];
}

+ (BOOL)supportsSecureCoding
{
    return YES;
}

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
