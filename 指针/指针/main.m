//
//  main.m
//  指针
//
//  Created by Silent on 15/7/22.
//  Copyright (c) 2015年 SILENCE. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    int a = 9;
    int *b;
    b = &a;
    
    NSLog(@"%zd", b);
    NSLog(@"==%d==", *b);
    
    /*
        b是int 型的指针变量，指针变量的值其实就是一个内存的地址，
        *b表示取出b的值(内存地址)对应的数据
     
        b表示一个变量，而*b表示一个数据
        int *是一个数据类型。。
     
     */
    
    return 0;
}
