//
//  main.m
//  objective_c
//
//  Created by 昊轩 on 2022/12/11.
//

#import <Foundation/Foundation.h>
#import "Human.h"
#import "Ticket.h"

int main() {
    @autoreleasepool {
        Human *human = [[Human alloc] init];
        Ticket *ticket = [[Ticket alloc] init];
//        代理票价信息和电影信息
        human.detail = ticket;
        [human.detail ticketCount];
        [human.detail ticketInfo];
    }
    return 0;
}
