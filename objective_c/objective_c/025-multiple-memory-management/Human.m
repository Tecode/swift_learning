//
//  Human.m
//  objective_c
//
//  Created by 昊轩 on 2022/9/17.
//

#import "Human.h"
#import "Book.h"

@implementation Human
-(void)setBook:(Book *)book{
//    引用计数+1，释放内存时会保留
//    _book = book;
    _book = [book retain];
}
-(Book *)book{
    return _book;
}
-(void)dealloc{
    NSLog(@"Human对象销毁");
//    Human组件销毁时将内存释放
    [_book release];
    [super dealloc];
}
@end
