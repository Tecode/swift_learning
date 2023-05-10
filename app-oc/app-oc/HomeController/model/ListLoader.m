//
//  ListLoader.m
//  app-oc
//
//  Created by 昊轩 on 2023/5/6.
//

#import "ListLoader.h"
#import <AFNetworking.h>
#import "../model/ListItem.h"

@implementation ListLoader
- (void) requestListDataBlock:(ListLoaderFinishBlock)requestListDataBlock
{
    NSString *urlString = @"https://tecode.github.io/Avalon-/json/newsList.json";
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager setRequestSerializer:[AFHTTPRequestSerializer serializer]];
    manager.responseSerializer.acceptableContentTypes = [[NSSet alloc] initWithObjects:@"text/plain", @"text/html", @"application/json", @"audio/wav", @"application/octet-stream", @"text/javascript", nil];
    [manager GET:urlString parameters:nil headers:nil progress:^(NSProgress * _Nonnull downloadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSArray *dataArr = [[responseObject objectForKey: @"result"] objectForKey: @"data"];
        //        转换数据
#warning 类型的检查
        NSMutableArray *listData = @[].mutableCopy;
        for (NSDictionary *data in dataArr) {
            ListItem *listItem = [[ListItem alloc] init];
            [listItem configWithDictionary: data];
            [listData addObject: listItem];
        }
        //        放到主线程
        dispatch_async(dispatch_get_main_queue(), ^{
            if (requestListDataBlock) {
                requestListDataBlock(listData.count > 0, listData);
            }
        });
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"请求失败 %@ \n", error);
    }];
    //    NSURLSession *shareSession = [NSURLSession sharedSession];
    //    NSURLSessionDataTask *dataTask = [shareSession dataTaskWithURL:listURL completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
    //        NSLog(@"请求成功%@", data);
    //    }];
    //    开始执行任务
    //    [dataTask resume];
    //    获取系统文件夹
    [self getSandBoxPath];
}

- (void)getSandBoxPath
{
    NSArray *pathArray = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
    //    缓存的文件夹路径
    NSString *cachePath = [pathArray firstObject];
    NSFileManager *fileManager = [NSFileManager defaultManager];
    //    创建文件夹路径
    NSString *dataPath = [cachePath stringByAppendingPathComponent:@"haouxan"];
    NSError *error;
    //    创建文件夹
    [fileManager createDirectoryAtPath:dataPath withIntermediateDirectories:YES attributes:nil error: &error];
    //    二进制内容
    NSData *fileData = [@"haoxuan" dataUsingEncoding:NSUTF8StringEncoding];
    //    存储文件
    NSString *filePath = [dataPath stringByAppendingPathComponent:@"data.txt"];
    [fileManager createFileAtPath:filePath contents:fileData attributes:nil];
    //    查询文件
    BOOL exist = [fileManager fileExistsAtPath: filePath];
    NSLog(@"%d", exist);
    //    删除
    if (exist) {
        //        [fileManager removeItemAtPath:filePath error:nil];
    }
    NSFileHandle *fileHandle = [NSFileHandle fileHandleForWritingAtPath: filePath];
    //    光标调整到末尾
    [fileHandle seekToEndOfFile];
    //    追加内容
    [fileHandle writeData:[@"+ baby + baby mother" dataUsingEncoding:NSUTF8StringEncoding]];
    //    同步文件内容
    [fileHandle synchronizeFile];
    //    关闭文件
    [fileHandle closeFile];
}

@end
