//
//  Human.h
//  objective_c
//
//  Created by 昊轩 on 2022/9/17.
//

#import <Foundation/Foundation.h>
#import "Book.h"

NS_ASSUME_NONNULL_BEGIN

@interface Human : NSObject
{
    Book *_book;
}

-(void)setBook:(Book *) book;
-(Book *) book;
@end

NS_ASSUME_NONNULL_END
