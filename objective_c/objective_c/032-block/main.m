//
//  main.m
//  objective_c
//
//  Created by 昊轩 on 2022/11/1.
//

#import <Foundation/Foundation.h>
/**
 block要掌握的东西
 1、如何定义block变量
     int (^sumBlock)(int, int)
     void (^sumBlock)(void)
 
 2、如何利用block封装代码
     ^(int value1, int value2) {
        return value1 - value2;
     };
 
 3、block访问外部变量
     block可以访问外部的变量
     默认情况下，block不能修改外面的局部变量
     给局部banal加上__block关键字，这个局部变量可以在block内部修改
 
 4、利用typeof定义block
     typedef int (^BlockType)(int, int);
     BlockType sumBlock
 */

int sum(int a, int b) {
    return a + b;
}

int reduce(int a, int b) {
    return a - b;
}

//使用类型定义
typedef int (*FunctionType)(int, int);
typedef int (^BlockType)(int, int);

int main() {
   __block int numberValue = 20;
//    指针定义类型
//    int (*sumPointer)(int, int) = sum;
//    int (*reducePointer)(int, int) = reduce;
    FunctionType sumPointer = sum;
    FunctionType reducePointer = reduce;
    /**
     block用来保存一段代码，block的标志^
     block跟函数很像：
         1、可以保存代码
         2、有返回值
         3、有形参
         4、调用方式一样
     */
    
//    定义block变量
    void (^blockCode)(void) = ^{
        NSLog(@"-------------");
        NSLog(@"-------------");
    };
    
//    int (^sumBlock)(int, int) = ^(int value1, int value2) {
//        return value1 + value2;
//    };
//
//    int (^reduceBlock)(int, int) = ^(int value1, int value2) {
//        return value1 - value2;
//    };
    
    BlockType sumBlock = ^(int value1, int value2) {
        numberValue = numberValue - 20;
        return value1 + value2;
    };
    
    BlockType reduceBlock = ^(int value1, int value2) {
        return value1 - value2;
    };
    
    NSLog(@"sumBlock:%d", sumBlock(2 ,5));
    NSLog(@"reduceBlock:%d", reduceBlock(2 ,5));
    blockCode();
    
    NSLog(@"sumPointer:%d", sumPointer(2 ,5));
    NSLog(@"reducePointer:%d", reducePointer(2 ,5));
    return 0;
}


//2022-11-01 19:45:55.016331+0800 objective_c[18838:309690] sumBlock:7
//2022-11-01 19:45:55.016536+0800 objective_c[18838:309690] reduceBlock:-3
//2022-11-01 19:45:55.016560+0800 objective_c[18838:309690] -------------
//2022-11-01 19:45:55.016574+0800 objective_c[18838:309690] -------------
//2022-11-01 19:45:55.016587+0800 objective_c[18838:309690] sumPointer:7
//2022-11-01 19:45:55.016598+0800 objective_c[18838:309690] reducePointer:-3
