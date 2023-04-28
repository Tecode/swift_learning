//
//  RequestMethod.m
//  app-oc
//
//  Created by 昊轩 on 2023/4/26.
//

#import "RequestMethod.h"

@implementation RequestMethod
- (void) requestListData
{
    NSString *urlString = @"https://raw.githubusercontent.com/robinson911/robinson911/master/ljweibo.json";
    NSURL *listURL = [NSURL URLWithString: urlString];
    //    NSURLRequest *requestURL = [NSURLRequest requestWithURL:listURL];
    NSURLSession *shareSession = [NSURLSession sharedSession];
    NSURLSessionDataTask *dataTask = [shareSession dataTaskWithURL:listURL completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSLog(@"请求成功%@", data);
    }];
    //    开始执行任务
    [dataTask resume];
}
@end
