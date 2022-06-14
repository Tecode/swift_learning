//
//  014-NString.m
//  objective_c
//
//  Created by 昊轩 on 2022/6/14.
//

#import <Foundation/Foundation.h>

int main(){
    NSString *str = @"OC字符串";
    NSLog(@"%@", str);
    char *name = "C语言字符串";
    NSLog(@"%s", name);
    
//    2022-06-14 20:05:51.242506+0800 objective_c[88616:740212] OC字符串
//    2022-06-14 20:05:51.242681+0800 objective_c[88616:740212] C语言字符串
    
//    字符串拼接，创建字符串的另一种方式
    NSString *value001 = @"world";
    NSString *contact = [NSString stringWithFormat:@"Hello %@, %@,%d", value001, str, 23];
//    int len = strlen("好");
//    printf("%d \n", len);  // 3
    NSLog(@"%@", contact);
    int valueLength = [contact length];
    NSLog(@"%d", valueLength);
    
//    2022-06-14 20:33:21.647833+0800 objective_c[90903:767701] Hello world, OC字符串,23
//    2022-06-14 20:33:21.647847+0800 objective_c[90903:767701] 21
    return 0;
}
