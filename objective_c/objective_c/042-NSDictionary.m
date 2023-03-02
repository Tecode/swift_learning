//
//  042-NSDictionary.m
//  objective_c
//
//  Created by 昊轩 on 2023/1/12.
//

#import <Foundation/Foundation.h>

//NSArray List
//NSSet Set
//NSDictionary Map

//集合
//1、NSArray\NSMutableArray
//有序
//快速创建@[]
//快速访问元素：数组名[index]
//
//2、NSSet\NSMutableSet
//无序

//3、NSDictionary\NSMutableDictionary
//无序
//快速创建（不可变）@{key:value}
//快速访问元素：字典名[key]

int main() {
    NSMutableDictionary *mutableDictionary = [NSMutableDictionary dictionary];
    [mutableDictionary setObject:@"haoxuan" forKey:@"name"];
    [mutableDictionary setObject:@"haoxuan1009" forKey:@"name"];
    [mutableDictionary removeObjectForKey:@"name"];
    NSLog(@"mutableDictionary%@", mutableDictionary);
//    字典创建方式
    NSDictionary *dictionary01 = [NSDictionary dictionaryWithObject:@"haoxuan" forKey:@"name"];
//    字典创建方式
    NSArray *keys = @[@"name", @"addr"];
    NSArray *values = @[@"haouxan", @"成都"];
    NSDictionary *dictionary02 = [NSDictionary dictionaryWithObjects:values forKeys:keys];
//    字典创建方式
    NSDictionary *dictionary03 = @{@"name": @"haouxan", @"home": @"成都市新都区"};
//    字典遍历
//    第一种方式
    NSArray *allKey = [dictionary03 allKeys];
    for (int index = 0; index < allKey.count; index ++) {
        NSLog(@"dictionary03 value %@", [dictionary03 objectForKey: allKey[index]]);
    }
//    2023-01-12 17:23:58.192749+0800 objective_c[11492:214633] dictionary03 value 成都市新都区
//    2023-01-12 17:23:58.192789+0800 objective_c[11492:214633] dictionary03 value haouxan
//    第二种方式，枚举所有项
    [dictionary03 enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        NSLog(@"KEY:%@ Value:%@", key, obj);
    }];
    
//    2023-01-12 17:23:58.192807+0800 objective_c[11492:214633] KEY:home Value:成都市新都区
//    2023-01-12 17:23:58.192821+0800 objective_c[11492:214633] KEY:name Value:haouxan
//    NSLog(@"%@", [dictionary03 allKeys]);
    NSLog(@"dictionary01-%@", dictionary01);
    NSLog(@"dictionary02-%@", dictionary02);
    NSLog(@"dictionary03-%@", dictionary03);
    NSLog(@"%@", [dictionary03 objectForKey: @"name"]);
    NSLog(@"%@", [dictionary03 objectForKey: @"home"]);
    NSLog(@"%@", [dictionary03 objectForKey: @"home2"]);
    NSLog(@"%ld", [dictionary03 count]);
    return 0;
}


//2023-01-12 14:04:25.299480+0800 objective_c[4033:74690] dictionary01-{
//    name = haoxuan;
//}
//2023-01-12 14:04:25.299724+0800 objective_c[4033:74690] dictionary02-{
//    addr = "\U6210\U90fd";
//    name = haouxan;
//}
//2023-01-12 14:04:25.299781+0800 objective_c[4033:74690] dictionary03-{
//    home = "\U6210\U90fd\U5e02\U65b0\U90fd\U533a";
//    name = haouxan;
//}
//2023-01-12 14:04:25.299811+0800 objective_c[4033:74690] haouxan
//2023-01-12 14:04:25.299829+0800 objective_c[4033:74690] 成都市新都区
//2023-01-12 14:04:25.299843+0800 objective_c[4033:74690] (null)
//2023-01-12 14:06:37.052284+0800 objective_c[4056:76898] 2