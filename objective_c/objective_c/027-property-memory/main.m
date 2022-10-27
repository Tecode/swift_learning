//
//  main.m
//  objective_c
//
//  Created by 昊轩 on 2022/10/26.
//

#import <Foundation/Foundation.h>
#import "Human.h"

int main() {
    Human *human = [[Human alloc] init];
    Book *book = [[Book alloc] init];
    human.book = book;
    human.book = book;
    NSLog(@"bookCount引用计数： %ld", [book retainCount]);
    [human dealloc];
    return 0;
}
