//
//  015-dot-syntax.h
//  objective_c
//
//  Created by 昊轩 on 2022/8/5.
//

#import <Foundation/Foundation.h>

@interface Human001 : NSObject
{
    @private
    int _age;
    NSString *_name;
}

- (void)setAge:(int)age;
- (int)age;

- (void)setName:(NSString *)name;
- (NSString *)name;
@end
