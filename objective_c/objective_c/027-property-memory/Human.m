//
//  Human.m
//  objective_c
//
//  Created by 昊轩 on 2022/10/27.
//

#import "Human.h"

@implementation Human
//- (void) setBook:(Book *)book {
//    if (_book != book) {
//        [_book release];
//        _book = [book retain];
//    }
//}
- (void)dealloc{
    NSLog(@"销毁Human");
    [_book release];
    [super dealloc];
}
@end
