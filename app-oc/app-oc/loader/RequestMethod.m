//
//  RequestMethod.m
//  app-oc
//
//  Created by 昊轩 on 2023/4/26.
//

#import "RequestMethod.h"
#import <AFNetworking.h>

@implementation RequestMethod
- (void) requestListData
{
    NSString *urlString = @"https://raw.githubusercontent.com/robinson911/robinson911/master/ljweibo.json";
    //    NSDictionary *headers = @{@"Content-type": @"application/json; text/json"};
    //    NSDictionary *headers = @{@"Authorization": @""};
    //    NSURL *listURL = [NSURL URLWithString: urlString];
    //    NSURLRequest *requestURL = [NSURLRequest requestWithURL:listURL];
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager setRequestSerializer:[AFHTTPRequestSerializer serializer]];
    manager.responseSerializer.acceptableContentTypes = [[NSSet alloc] initWithObjects:@"text/plain", @"text/html", @"application/json", @"audio/wav", @"application/octet-stream", @"text/javascript", nil];
    //    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    
    [manager GET:urlString parameters:nil headers:nil progress:^(NSProgress * _Nonnull downloadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"OK %@", responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"请求失败 %@ \n", error);
    }];
    //    NSURLSession *shareSession = [NSURLSession sharedSession];
    //    NSURLSessionDataTask *dataTask = [shareSession dataTaskWithURL:listURL completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
    //        NSLog(@"请求成功%@", data);
    //    }];
    //    开始执行任务
    //    [dataTask resume];
}
@end
