//
//  Hunman.m
//  objective_c
//
//  Created by 昊轩 on 2022/9/17.
//

#import "Hunman.h"

@implementation Hunman
- (void)running001 {
    NSLog(@"runming001");
}

- (void)running002 {
//    _cmd == @selector(running002)
    NSString *str = NSStringFromSelector(_cmd);
    NSLog(@"running002 %@", str);
}

- (void)running003:(NSString *)name {
    NSLog(@"name=%@", name);
}
@end
