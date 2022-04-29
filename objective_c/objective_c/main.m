//
//  main.m
//  objective_c
//
//  Created by 昊轩 on 2022/4/29.
//

#import <Foundation/Foundation.h>

// hobby 枚举
typedef enum{
    HobbySwimming,
    HobbyRun
}Hobby;

// 对象赋值
typedef struct {
    int year;
    int month;
    int day;
}Date;

@interface Human003 : NSObject
{
    @public
    char *name;
    Hobby hobby;
    Date birthday;
}
- (void)run;
- (void)getInfo;
@end

@implementation Human003
- (void)run
{
    NSLog(@"用户名：%s，生日%d年%d月%d日", name, birthday.year, birthday.month, birthday.day);
}
- (void)getInfo
{
    NSLog(@"用户名：%s，爱好%d", name, hobby);
}
@end

int main(){
    Human003 *human = [Human003 new];
//    human->birthday.year = 2022;
//    human->birthday.month = 4;
//    human->birthday.day = 29;
// 或者
    Date b = {2022,4,29};
    human->birthday =b;
    human->name = "haoxuan";
    [human run];
    [human getInfo];
    return 0;
}
