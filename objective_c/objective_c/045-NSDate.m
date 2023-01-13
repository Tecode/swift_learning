//
//  045-NSDate.m
//  objective_c
//
//  Created by 昊轩 on 2023/1/13.
//

#import <Foundation/Foundation.h>


int main() {
//    创建时间
    NSDate *date01 = [NSDate date];
    NSLog(@"%@", date01);
//    2023-01-13 11:23:19.019301+0800 objective_c[3084:54052] Fri Jan 13 11:23:19 2023
//    格式化日期显示
    NSDateFormatter *formatter01 = [[NSDateFormatter alloc] init];
    formatter01.dateFormat = @"yyyy-MM-dd HH:mm:ss";
    NSString *dateText = [formatter01 stringFromDate: date01];
//    2023-01-13 11:28:09.965350+0800 objective_c[3152:58208] 2023-01-13 11:28:09
    NSLog(@"%@", dateText);
//    将字符串转化为NSDate
    NSDateFormatter *formatter02 = [[NSDateFormatter alloc] init];
    formatter02.dateFormat = @"yyyy/MM/dd";
    NSString *text = @"2035/10/01";
    NSLog(@"%@", [formatter02 dateFromString: text]);
    return 0;
}

//2023-01-13 14:02:14.707987+0800 objective_c[4526:146583] Fri Jan 13 14:02:14 2023
//2023-01-13 14:02:14.710896+0800 objective_c[4526:146583] 2023-01-13 14:02:14
//2023-01-13 14:02:14.711888+0800 objective_c[4526:146583] Mon Oct  1 00:00:00 2035
