//
//  038-NSArray.m
//  objective_c
//
//  Created by 昊轩 on 2023/1/3.
//

#import <Foundation/Foundation.h>

int main() {
//    int numbers[4] = {1, 3, 4};
//    OC不能存放nil值
//    OC对象只能存放OC对象，不能存放非OC对象，比如int、struct、enum等
//    这个永远是空数组
//    NSArray *arr = [NSArray array]
//    nil是结束的标志
    NSArray *array = [NSArray arrayWithObjects:@"haoxuan", @"swift", nil];
    NSLog(@"%ld", [array count]);
    NSLog(@"%@", [array objectAtIndex:1]);
    NSLog(@"%@", array[0]);
//    快速创建NSArry
    NSArray *arr01 = @[@"golang", @"swift"];
    NSLog(@"%@", arr01[0]);
    
//    遍历
    for(id data in array) {
        NSLog(@"for遍历数组：%@", data);
    }
    return 0;
}
