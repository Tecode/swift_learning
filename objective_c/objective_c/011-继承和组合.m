//
//  011-继承.m
//  objective_c
//
//  Created by 昊轩 on 2022/5/17.
//

#import <Foundation/Foundation.h>

@interface Animal : NSObject
{
    @public
    char *name;
    double weight;
    char *food;
}

- (void)sayName;
- (void)setName:(char*)value;
- (void)setFood:(char*)value;
- (void)setWeight:(double)value;
@end

@implementation Animal
- (void)sayName
{
    NSLog(@"Animal-父类方法");
}

- (void)setName:(char*)value
{
    
}

- (void)setWeight:(double)value
{
    
}

- (void)setFood:(char*)value
{
   
}
@end

@interface Cat : Animal
@end

// 继承
@implementation Cat
- (void)sayName
{
    NSLog(@"name=%s food=%s weight=%.2f", self->name, self->food,self->weight);
    // 执行父类方法
    [super sayName];
}

- (void)setName:(char*)value
{
    self->name = value;
}

- (void)setWeight:(double)value
{
    self->weight = value;
}

- (void)setFood:(char*)value
{
    self->food = value;
}
@end

// 组合
@interface Elephant : NSObject
{
    @public
    Animal *animal;
}
@end

@implementation Elephant
@end

int main()
{
//  继承
    Cat *cat = [Cat new];
    [cat setName:"花花"];
    [cat setFood:"小鱼干"];
    [cat setWeight:2.3];
    [cat sayName];
//    2022-05-17 19:46:32.427392+0800 objective_c[31210:885739] name=花花 food=小鱼干 weight=2.30
//    2022-05-17 19:46:32.427583+0800 objective_c[31210:885739] Animal-父类方法
//  组合
    Elephant *elepant = [Elephant new];
    elepant->animal = [Animal new];
    [elepant->animal sayName];
//    2022-05-17 19:55:56.514282+0800 objective_c[35830:916654] Animal-父类方法
    return 0;
}
