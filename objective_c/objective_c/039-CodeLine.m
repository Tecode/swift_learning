//
//  039-CodeLine.m
//  objective_c
//
//  Created by 昊轩 on 2023/1/7.
//

// 遍历文件和文件夹，计算文件的总行数
#import <Foundation/Foundation.h>


int codeLine(NSString *path){
//    1、获得文件管理者
    NSFileManager *manager = [NSFileManager defaultManager];
//    2、判断是否是文件夹
    BOOL isDirectory = NO;
    int count = 0;
    BOOL exist = [manager fileExistsAtPath:path isDirectory:&isDirectory];
//    3、判断路径是否存在，不存在就不往下执行
    if (!exist) {
        NSLog(@"文件路径不存在");
        return 0;
    }
//    4、判断是文件还是文件夹
    if (isDirectory) {
        NSArray *array = [manager contentsOfDirectoryAtPath:path error:nil];
        for (NSString *filePath in array) {
            NSString *fullPath = [NSString stringWithFormat:@"%@/%@", path, filePath];
//            NSLog(@"%@", fullPath);
            
            count += codeLine(fullPath);
        }
        return count;
    } else {
//        5、获取文件扩展名将扩展名转为小写
        NSString *extention = [[path pathExtension] lowercaseString];
        if (![extention isEqualToString: @"m"] && ![extention isEqualToString: @"c"] && ![extention isEqualToString: @"swift"]) {
            return 0;
        }
        
        NSString *content = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
//    按换行符号将字符串分割为数组
        NSArray *list = [content componentsSeparatedByString: @"\n"];
        count = (int)list.count;
//      替换全路径找到文件名
        NSRange range = [path rangeOfString:@"/Users/haoxuan/Work/swift_learning/"];
        NSString *name = [path stringByReplacingCharactersInRange:range withString:@""];
        NSLog(@"%@ = 文件行数：%ld", name, list.count);
        return count;
    }
}

int main(){
//    NSString *path = @"/Users/haoxuan/Work/swift_learning/objective_c/objective_c/018-构造方法.m";
    NSString *path = @"/Users/haoxuan/Work/swift_learning";
    int count = codeLine(path);
    NSLog(@"文件总行数：%d",count);
    return 0;
}

//2023-01-08 22:14:28.265137+0800 objective_c[17542:470021] objective_c/objective_c/027-property-memory/main.m = 文件行数：22
//2023-01-08 22:14:28.265190+0800 objective_c[17542:470021] objective_c/objective_c/027-property-memory/Human.m = 文件行数：23
//2023-01-08 22:14:28.265240+0800 objective_c[17542:470021] objective_c/objective_c/002_other_main.m = 文件行数：16
//2023-01-08 22:14:28.265375+0800 objective_c[17542:470021] objective_c/objective_c/025-multiple-memory-management/Book.m = 文件行数：16
//2023-01-08 22:14:28.265450+0800 objective_c[17542:470021] objective_c/objective_c/025-multiple-memory-management/main.m = 文件行数：41
//2023-01-08 22:14:28.265517+0800 objective_c[17542:470021] objective_c/objective_c/025-multiple-memory-management/Human.m = 文件行数：27
//2023-01-08 22:14:28.265596+0800 objective_c[17542:470021] 文件总行数：4794
