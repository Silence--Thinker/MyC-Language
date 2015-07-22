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
    
    
    return 0;
}
