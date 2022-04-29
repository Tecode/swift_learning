//
//  BOOL类型的本质.m
//  objective_c
//
//  Created by 昊轩 on 2022/4/29.
//

#import <Foundation/Foundation.h>

void runBool(BOOL value) {
    NSLog(@"%d", value);
}

// BOOL类型的本质 typedef char BOOL
// YES 1 NO 2
int main(int argc, const char * argv[]) {
    BOOL value = YES;
    runBool(value);
}
