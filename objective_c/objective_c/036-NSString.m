//
//  036-NSString.m
//  objective_c
//
//  Created by 昊轩 on 2023/1/2.
//

#import <Foundation/Foundation.h>

int main() {
//    NSString不可变字符串
//    NSMutableString可变字符串
    //    字符串创建
    NSString *str01 = @"haoxuan1";
//    NSString *str02 = [[NSString alloc] initWithString: @"haoxuan2"];
    NSString *str03 = [[NSString alloc] initWithFormat: @"%d", 88];
    
//    C字符串 -> OC字符串
    NSString *str04 = [[NSString alloc] initWithUTF8String: "haoxuan3"];
//    OC 字符串 -> C字符串
    const char *c = [str04 UTF8String];
    
    NSString *str05 = [[NSString alloc] initWithContentsOfFile:@"/Users/haoxuan/Work/swift_learning/objective_c/objective_c/002_other_header.m" encoding:NSUTF8StringEncoding error:nil];
//    URL:资源路径
//    协议头://路径
//    file://
//    ftp://
//    http://
    
    NSURL *url = [[NSURL alloc] initWithString: @"http://www.baidu.com"];
    NSString *str06 = [[NSString alloc] initWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
    NSLog(@"%@ - %@ -%@ -%@ -\n ==================%@ \n", str01, str03, str04, str05, str06);
    printf("%s \n", c);
    
//    类方法
//    [NSString stringWithFormat: @"%d", 66];
//    [NSString stringWithContentsOfURL: url encoding:NSUTF8StringEncoding error:nil];
    
//    文件写入
    NSString *str07 = @"haoxan";
    NSURL *fileUrl = [NSURL fileURLWithPath: @"/Users/haoxuan/Work/swift_learning/data/NSString.txt"];
    [str07 writeToFile: fileUrl atomically: YES encoding:NSUTF8StringEncoding error:nil];
    return 0;
}
