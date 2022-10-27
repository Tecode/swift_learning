//
//  IDCard.m
//  objective_c
//
//  Created by 昊轩 on 2022/10/27.
//

#import "IDCard.h"
#import "Human.h"

@implementation IDCard
- (void)dealloc {
    NSLog(@"IDCard销毁了");
    [_human release];
    [super dealloc];
}
@end
