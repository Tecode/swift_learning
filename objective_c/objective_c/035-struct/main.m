//
//  main.m
//  objective_c
//
//  Created by 昊轩 on 2022/12/31.
//

#import <Foundation/Foundation.h>

// NSRange
// NSPoint/CGPoint
// NSSize/CGSize
// NSRect/CGRect

int main() {
    NSRange range01 = { 10, 2}; // 不用
    NSRange range02 = {.length = 2, .location = 4}; // 不用
    NSRange range03 = NSMakeRange(2, 10); // 掌握
    
    NSPoint point01 = NSMakePoint(20, 30);
    NSPoint point02 = CGPointMake(20, 30);
    
    NSString *name = @"haoxuan";
    NSRange range04 = [name rangeOfString:@"xu"];
    
    NSLog(@"locatinon: %ld, length: %ld", range04.location, range04.length);
    NSLog(@"locatinon: %ld, length: %ld", NSNotFound, range04.length);
    NSLog(@"locatinon: %d", NSNotFound); // -1 无符号长整型


    
    return 0;
}
